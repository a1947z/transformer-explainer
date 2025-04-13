# 本地调试

- 修改svelte.confg.js中
```
		adapter: adapter({
			// pages: 'build',
			// assets: 'build',
			pages: 'public',
			assets: 'public',	
```

- 运行 npm run build
会产生一个文件public

- 将 models下的文件复制到public，否则页面会自动从huggingface上下载gpt2的tokenlizer

- 运行

```
 docker run --rm -v $(pwd -W)/public:/usr/share/nginx/html -v $(pwd -W)/nginx.conf:/etc/nginx/conf.d/default.conf -p 5004:80 nginx:alpine
```
- 运行过程中会下载600M左右的gpt2 onnx


# Transformer Explainer: Interactive Learning of Text-Generative Models

Transformer Explainer is an interactive visualization tool designed to help anyone learn how Transformer-based models like GPT work. It runs a live GPT-2 model right in your browser, allowing you to experiment with your own text and observe in real time how internal components and operations of the Transformer work together to predict the next tokens. Try Transformer Explainer at http://poloclub.github.io/transformer-explainer and watch a demo video on YouTube https://youtu.be/TFUc41G2ikY.<br/><br/>
[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
[![arxiv badge](https://img.shields.io/badge/arXiv-2408.04619-red)](https://arxiv.org/abs/2408.04619)

<a href="https://youtu.be/TFUc41G2ikY" target="_blank"><img width="100%" src='https://github.com/user-attachments/assets/0a4d8888-6555-4df5-bc71-77f1299115c3'></a>

## Live Demo
Try Transformer Explainer: http://poloclub.github.io/transformer-explainer

## Research Paper

[**Transformer Explainer: Interactive Learning of Text-Generative Models**](https://arxiv.org/abs/2408.04619).
Aeree Cho, Grace C. Kim, Alexander Karpekov, Alec Helbling, Zijie J. Wang, Seongmin Lee, Benjamin Hoover, Duen Horng Chau.
_Poster, IEEE VIS 2024._

## How to run locally

#### Prerequisites

- Node.js v20 or higher
- NPM v10 or higher

#### Steps

```bash
git clone https://github.com/poloclub/transformer-explainer.git
cd transformer-explainer
npm install
npm run dev
```

Then, on your web browser, access http://localhost:5173.

## Credits

Transformer Explainer was created by <a href="https://aereeeee.github.io/" target="_blank">Aeree Cho</a>, <a href="https://www.linkedin.com/in/chaeyeonggracekim/" target="_blank">Grace C. Kim</a>, <a href="https://alexkarpekov.com/" target="_blank">Alexander Karpekov</a>, <a href="https://alechelbling.com/" target="_blank">Alec Helbling</a>, <a href="https://zijie.wang/" target="_blank">Jay Wang</a>, <a href="https://seongmin.xyz/" target="_blank">Seongmin Lee</a>, <a href="https://bhoov.com/" target="_blank">Benjamin Hoover</a>, and <a href="https://poloclub.github.io/polochau/" target="_blank">Polo Chau</a> at the Georgia Institute of Technology.

## Citation

```bibTeX
@article{cho2024transformer,
  title = {Transformer Explainer: Interactive Learning of Text-Generative Models},
  shorttitle = {Transformer Explainer},
  author = {Cho, Aeree and Kim, Grace C. and Karpekov, Alexander and Helbling, Alec and Wang, Zijie J. and Lee, Seongmin and Hoover, Benjamin and Chau, Duen Horng},
  journal={IEEE VIS Poster},
  year={2024}
}
```

## License

The software is available under the [MIT License](https://github.com/poloclub/transformer-explainer/blob/main/LICENSE).

## Contact

If you have any questions, feel free to [open an issue](https://github.com/poloclub/transformer-explainer/issues/new/choose) or contact [Aeree Cho](https://aereeeee.github.io/) or any of the contributors listed above.

## More AI explainers to check out

- [**Diffusion Explainer**](https://poloclub.github.io/diffusion-explainer) for learning how Stable Diffusion transforms text prompt into image
- [**CNN Explainer**](https://poloclub.github.io/cnn-explainer)
- [**GAN Lab**](https://poloclub.github.io/ganlab) for playing with Generative Adversarial Networks in browser
