# Deep RL Jutsu

A Guide to Becoming a Deep Reinforcement Learning Ninja. This is a 'Giving Back' repository where RL algorithms are implemented from scratch in a notebook-style tutorial, and learning resources are organized.

> **📖 New: the companion book — [*Deep Reinforcement Learning: From Zero to Hero*](rl_book.pdf)**
>
> This repo now includes a book that I wrote myself with the help of AI. It covers the math preliminaries (probability, linear algebra, calculus, information theory) and the theory behind the algorithms in the notebooks. It's a work in progress, and new chapters are added over time. Read the latest version in [`rl_book.pdf`](rl_book.pdf). The LaTeX sources are in [`book/`](book/).

## Setup

This repo uses [pixi](https://pixi.sh) to manage the environment. One command installs Python, PyTorch, Gymnasium and Jupyter. The versions are pinned in `pixi.lock`, so every learner gets the same setup on Linux, macOS (Intel and Apple Silicon) and Windows.

### 1. Install pixi (one-time)

```bash
# Linux / macOS
curl -fsSL https://pixi.sh/install.sh | sh

# Windows (PowerShell)
powershell -ExecutionPolicy ByPass -c "irm -useb https://pixi.sh/install.ps1 | iex"
```

Restart your terminal afterwards so that `pixi` is on your `PATH`.

### 2. Clone and install

```bash
git clone https://github.com/subratpp/deep-rl-jutsu.git
cd deep-rl-jutsu
pixi install        # creates the environment in ./.pixi
pixi run check      # sanity check: should print "... | OK"
```

### 3. Open the notebooks

```bash
pixi run lab        # launches JupyterLab, then open dqn.ipynb, ppo.ipynb, ...
```

**Using VS Code instead?** Open the folder and pick the kernel at `.pixi/envs/default/bin/python` (Windows: `.pixi\envs\default\python.exe`).

### Other useful commands

| Command | What it does |
| --- | --- |
| `pixi shell` | Activate the environment in your terminal (like `conda activate`) |
| `pixi run python my_script.py` | Run a script inside the environment |
| `pixi add <package>` | Add a new dependency (updates `pixi.toml` and `pixi.lock`) |
| `pixi run -e atari lab` | Use the optional environment with Atari games (`ale-py`) |

What's included: Gymnasium with classic control (CartPole, Pendulum) and Box2D (LunarLander, BipedalWalker), PyTorch (CPU, or Apple Silicon `mps`), NumPy, Matplotlib and JupyterLab.

<details>
<summary>Legacy conda setup (Linux only)</summary>

```bash
conda env create -f environment.yml
conda activate drl-jutsu
```
</details>

## Building the Book

The book source is in [`book/`](book/), and each chapter is a separate file in [`book/chapters/`](book/chapters/). Building it requires a TeX distribution such as [TeX Live](https://tug.org/texlive/) or [MacTeX](https://tug.org/mactex/), which includes `latexmk`.

To compile the PDF from the repo root:

```bash
pixi run book          # compile once      -> rl_book.pdf
pixi run book-watch    # recompile on every save (Ctrl+C to stop)
```

Without pixi, run `latexmk` directly inside `book/`:

```bash
cd book
latexmk          # compile once      -> ../rl_book.pdf
latexmk -pvc     # recompile on every save
latexmk -c       # remove auxiliary files
```

In **VS Code**, install the recommended [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) extension. The book then rebuilds automatically whenever you save any `.tex` or `.bib` file, including individual chapter files. Auxiliary files go to `book/build/`, which git ignores. Only `rl_book.pdf` is committed.

## Value-Based:
1. DQN
2. DDPG
3. SAC

## Policy-Based
1. PPO

---
# Famous Libraries

## Environment Wrappers
PufferLib: It provides a wrapper over all environments, which can be seamlessly integrated with ClearRL or SB3

## Research (small scale)
1. ClearnRL: Single file implementation of Learning algorithms. Good for small scale research experiments
2. Stablebaselines3: More standard but least modular. Integrating a custom architecture for policy and value functions needs a subclassing the policy
3. **SkRL**: It Came in 2023 and looks promising. 
4. Garage: More modular than SB3, but limited community support and more line of code to setup the training
5. TorchRL: It was released in 2023. Need to explore more

## Research (large scale)
1. Acme: Deepmind
2. Tianshou
3. moolib: For distributed RL training
4. Sample Factory: For large-scale environments with 3D images

## Production and Scalability
RLLib (needs compute resources)


## Finetuning
1. Optuna
2. carbs
3. Ray Tune
4. torchtune (LLM finetuning)

---
# Resources
1. https://github.com/kengz/awesome-deep-rl
2. https://github.com/wwxFromTju/awesome-reinforcement-learning-lib
