import neurom as nm
from neurom import get as get_feature
import os

# Path to your morphology folder
morphology_dir = r"C:\Users\borjk\Documents\Codes\SCC_PCB-main\SCC_PCB-main\Model\Control\components\morphologies"

# SWC files for each neuron type
files = {
    "Scnn1a (PYR)": "Scnn1a_473845048_m.swc",
    "PV1": "Pvalb_470522102_m.swc",
    "SST": "Sst_513556739_m.swc",
    "VIP": "Htr3a_492100857_m.swc"
}

# Count branch points manually
def count_branch_points(neuron):
    return sum(len(sec.children) > 1 for sec in nm.iter_sections(neuron))

# Count primary neurites connected to soma
def count_primary_dendrites(neuron):
    return len(neuron.neurites)

# Compute max tree depth by walking parent links
def section_depth(sec):
    d = 0
    while sec.parent:
        sec = sec.parent
        d += 1
    return d

# Analyze morphology file
def analyze_morphology(name, path):
    neuron = nm.load_morphology(path)
    max_depth = max(section_depth(s) for s in nm.iter_sections(neuron))
    return {
        "Cell Type": name,
        "Compartments": len(list(nm.iter_sections(neuron))),
        "Total Length (µm)": round(get_feature('total_length', neuron), 2),
        "Total Surface Area (µm²)": round(get_feature('total_area', neuron), 2),
        "Branch Points": count_branch_points(neuron),
        "Soma Radius (µm)": round(nm.get('soma_radius', neuron), 2),
        "Primary Dendrites": count_primary_dendrites(neuron),
        "Max Tree Depth": max_depth
    }

# Run analysis
results = []
print("\n📊 Morphology Summary\n")
for cell_type, filename in files.items():
    full_path = os.path.join(morphology_dir, filename)
    result = analyze_morphology(cell_type, full_path)
    results.append(result)

    print(f"== {cell_type} ==")
    for key, value in result.items():
        if key != "Cell Type":
            print(f"  {key}: {value}")
    print()
