# 🧩 Platform Puzzle 2D (Godot)

Um jogo de **plataforma e quebra-cabeça 2D** desenvolvido com o **Godot Engine**.  
Este projeto é uma prova de conceito que combina mecânicas de plataforma com desafios lógicos e de exploração.

---

## 🎮 Funcionalidades

- Movimento completo do personagem: correr, pular e interagir com o ambiente.  
- Mecânicas de puzzle (como ativação de plataformas, alavancas e mecanismos).  
- Estrutura modular de cenas e scripts no Godot.  
- Build exportada incluída (`dist.zip` e `platform.wasm`) para jogar direto no navegador.  
- Código e organização pensados para fácil expansão e personalização.

---

## 🗂 Estrutura do repositório

```
assets/           → artes, sons e sprites  
build/            → arquivos intermediários de build  
scenes/           → cenas do Godot (.tscn)  
scripts/          → scripts em GDScript com a lógica do jogo  
.editorconfig     → configuração de estilo de código  
.gitattributes    → atributos do Git  
.gitignore        → arquivos ignorados pelo Git  
default_bus_layout.tres → layout de áudio  
dist.zip          → versão exportada do jogo  
export_presets.cfg → presets de exportação do Godot  
finished.gd       → script de fim de fase  
icon.svg          → ícone do jogo  
node.gd           → script do nó principal  
platform.pck      → pacote de recursos do Godot  
platform.png      → imagem de preview ou banner  
platform.wasm     → build web (WASM)  
project.godot     → arquivo principal do projeto Godot  
```

---

## 🚀 Como executar o projeto

### Pré-requisitos
- Ter o **Godot Engine** instalado (versão usada: *[preencha aqui]*).  
- (Opcional) Navegador moderno para rodar a versão web (`platform.wasm`).  
- Conhecimento básico de GDScript e cenas do Godot ajuda bastante.

### Rodando localmente
1. Clone o repositório:  
   ```bash
   git clone https://github.com/LeoGonzaga/platform-puzzle-2d-godot.git
   ```
2. Abra o arquivo `project.godot` no Godot.  
3. Execute a cena principal (ex: `scenes/Main.tscn`).  
4. Jogue, teste e modifique à vontade!

### Usando a build exportada
- Extraia o arquivo `dist.zip` e execute o jogo, ou abra `platform.wasm` diretamente no navegador.  
- Ideal para testar rapidamente sem abrir o editor.

---

## 🧱 Arquitetura e funcionamento

- Cada fase é uma cena independente dentro de `scenes/`.  
- Scripts em `scripts/` controlam o comportamento de personagens, plataformas e puzzles.  
- `assets/` contém todos os recursos visuais e sonoros.  
- As configurações de exportação estão em `export_presets.cfg`.  
- O projeto é modular — basta duplicar uma cena e alterar os elementos para criar novas fases.

---

## ✏️ Como contribuir ou expandir

- **Adicionar uma nova fase:** copie uma existente, renomeie e ajuste a lógica dos puzzles.  
- **Criar novas mecânicas:** adicione scripts em `scripts/` e conecte aos nós correspondentes.  
- **Organização:** siga a estrutura e os padrões de nomenclatura (`Player.gd`, `PuzzleSwitch.gd`, etc.).

### Fluxo para contribuir
1. Faça um **fork** do repositório.  
2. Crie uma nova branch:  
   ```bash
   git checkout -b feature/nova-mecanica
   ```
3. Faça commits descritivos e claros.  
4. Teste as mudanças antes de abrir um **pull request**.  

Se encontrar bugs ou tiver ideias para novas fases/mecânicas, abra uma **issue** no repositório!

---


## 📅 Roadmap / Próximos passos

- [ ] Adicionar novas fases com dificuldade progressiva.  
- [ ] Criar interface (HUD, menu de pausa, seleção de fases).  
- [ ] Melhorar movimentação e animações do personagem.  
- [ ] Adicionar sons e trilha sonora.  
- [ ] Otimizar versão web e mobile.  
- [ ] Implementar sistema de salvamento e configurações.


