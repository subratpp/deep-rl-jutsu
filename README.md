# deep-rl-jutsu
A Guide to Becoming a Deep Reinforcement Learning Ninja.

## Environment Wrappers
PufferLib: It provides a wrapper over all environments, which can be seamlessly integrated with ClearRL or SB3

## Research (small scale)
1. ClearnRL: Single file implementation of Learning algorithms. Good for small scale research experiments
2. Stablebaselines3: More standard but least modular. Integrating a custom architecture for policy and value functions needs a subclassing the policy
3. **SkRL**: It Came in 2023 and looks promising. 
4. Garage: More modular than SB3, but limited community support and more line of code to setup the training
5. TorchRL: It was released in 2023. Need to explore more

Need to try out torchRL, skrl and cleanRL.

## Research (large scale)
1. Acme: Deepmind
2. Tianshou:
3. moolib: For distributed RL training
4. Sample Factory: For large-scale environments with 3D images

## Production and Scalability
RLLib (needs compute resources)


## Finetuning
1. Optuna
2. carbs
3. Ray Tune

## Resources
1. https://github.com/kengz/awesome-deep-rl
2. https://github.com/wwxFromTju/awesome-reinforcement-learning-lib
