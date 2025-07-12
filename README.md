# Linear Equation Solver - Verilog Implementation

A comprehensive Verilog implementation of a 3x3 linear equation system solver that computes determinants and performs rank analysis using digital logic circuits.

## 🌟 Features

- **3x3 Matrix Operations**: Solves linear systems of the form Ax = b
- **Determinant Calculation**: Computes 3x3 matrix determinants using cofactor expansion
- **Rank Analysis**: Determines matrix rank and augmented matrix rank for solution classification
- **Modular Design**: Built with reusable arithmetic modules (adders, multipliers, comparators)
- **Comprehensive Testing**: Includes extensive testbench with 10 test cases
- **Digital Logic Implementation**: Pure Verilog using basic gates (AND, OR, NOT, XOR, NAND)

## 🛠️ Tech Stack

- **Verilog HDL** - Hardware description language
- **Digital Logic Design** - Gate-level implementation
- **Modular Architecture** - Hierarchical design approach
- **Testbench Verification** - Comprehensive test coverage

## 📁 Project Structure

LinearEquationSolver/
├── rank.v # Main solver module

├── arithmetic_modules.v # Multipliers, adders, subtractors

├── comparison_modules.v # Equality checkers

├── basic_gates.v # Fundamental logic gates

├── testbench.v # Comprehensive test suite

└── README.md


## 🧠 Algorithm Implementation

### Core Mathematical Operations

The solver implements the following key algorithms:

1. **Determinant Calculation** using cofactor expansion:
det(A) = a₁₁(a₂₂a₃₃ - a₂₃a₃₂) - a₁₂(a₂₁a₃₃ - a₂₃a₃₁) + a₁₃(a₂₁a₃₂ - a₂₂a₃₁)

2. **Rank Analysis** through systematic row reduction and comparison
3. **Solution Classification** based on rank relationships

### Key Modules

| Module | Function | Bit Width |
|--------|----------|-----------|
| `rank` | Main solver module | 3-bit inputs |
| `multiplier_3_bit` | 3×3 bit multiplication | 6-bit output |
| `multiplier_6x3_bit` | 6×3 bit multiplication | 9-bit output |
| `multiplier_9x3_bit` | 9×3 bit multiplication | 12-bit output |
| `adder_9_bit` | 9-bit addition | 9-bit output |
| `subtraction_6_bit` | 6-bit subtraction | 6-bit output |
| `equal_12_bit` | 12-bit equality check | 1-bit output |

## 🎯 Input/Output Specification

### Inputs
- **Matrix A**: `a1[2:0], b1[2:0], c1[2:0]` (Row 1)
- **Matrix A**: `a2[2:0], b2[2:0], c2[2:0]` (Row 2)  
- **Matrix A**: `a3[2:0], b3[2:0], c3[2:0]` (Row 3)
- **Vector b**: `d1[2:0], d2[2:0], d3[2:0]` (Constants)

### Outputs
- **y[8:0]**: Determinant of matrix A
- **y1[1:0]**: Rank classification indicator
- **y2[1:0]**: Augmented matrix rank indicator  
- **y3[1:0]**: Solution existence indicator

## 🚀 Quick Start

### Prerequisites
- Verilog simulator (ModelSim, Icarus Verilog, or similar)
- Basic understanding of digital logic design

### Running the Simulation

1. **Compile the design**
iverilog -o rank_sim rank.v testbench.v

2. **Run simulation**
vvp rank_sim


3. **View waveforms** (optional)
gtkwave rank_tb.vcd


## 🧪 Test Cases

The testbench includes 10 comprehensive test cases:

1. **Full Rank System**: Unique solution exists
2. **Singular Matrix**: Determinant equals zero
3. **Rank Deficient**: Multiple solutions possible
4. **Identity Matrix**: Trivial solution case
5. **Degenerate Case**: All zeros
6. **Maximum Values**: Stress test with largest inputs
7. **Alternating Patterns**: Pattern-based verification
8. **Single Element**: Minimal non-zero case
9. **Diagonal Matrix**: Special structure test
10. **Upper Triangular**: Structured matrix test

### Sample Test Output
Test Case 1: Full rank system (unique solution)
a1=3,b1=0,c1=3,d1=0,a2=0,b2=3,c2=3,d2=0,a3=3,b3=3,c3=0,d3=1
y=27,y1=2,y2=1,y3=3


## 🔧 Module Hierarchy

rank (top-level)

├── multiplier_3_bit (×6)

├── multiplier_6x3_bit (×3)

├── multiplier_9x3_bit (×3)

├── adder_9_bit (×1)

├── subtraction_6_bit (×3)

├── subtraction_9_bit (×2)

├── equal_3_bit (×3)

├── equal_6_bit (×2)

├── equal_12_bit (×2)

└── basic_gates (AND, OR, NOT, XOR, NAND)


## 🎯 Key Features Implementation

### Arithmetic Operations
- **Parallel Multiplication**: Multiple 3-bit multipliers for simultaneous cofactor calculation
- **Carry-Propagate Addition**: Full adders with carry chains for accurate results
- **Two's Complement Subtraction**: Proper handling of negative intermediate results

### Comparison Logic
- **Bit-by-bit Equality**: XNOR-based comparison for exact matching
- **Hierarchical AND Trees**: Efficient multi-bit equality checking

### Error Handling
- **Overflow Protection**: Proper bit-width allocation for intermediate results
- **Edge Case Coverage**: Handles degenerate matrices and boundary conditions

## 📊 Performance Characteristics

- **Propagation Delay**: Approximately 15-20 gate delays for complete computation
- **Area Complexity**: O(n³) where n is the bit width (3 bits)
- **Power Consumption**: Optimized through minimal gate count design

## 🤝 Contributing

Contributions are welcome! Areas for improvement:

1. **Optimization**: Reduce gate count and propagation delay
2. **Expansion**: Support for larger matrix sizes (4x4, 5x5)
3. **Verification**: Additional edge case testing
4. **Documentation**: Enhanced module-level documentation

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👨‍💻 Author

**[Your Name]**
- GitHub: [yash270405](https://github.com/yash270405)

## 🙏 Acknowledgments

- Digital design principles from computer architecture coursework
- Verilog HDL reference materials and best practices
- Linear algebra mathematical foundations

⭐ **Star this repository if you found it helpful for learning digital design or linear algebra implementation!**
