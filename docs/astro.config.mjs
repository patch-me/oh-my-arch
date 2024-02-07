import { defineConfig } from 'astro/config';
import starlight from '@astrojs/starlight';

// https://astro.build/config
export default defineConfig({
	integrations: [
		starlight({
			title: 'Oh My Docs',
			social: {
				gitlab: 'https://gitlab.com/letmerice/oh-my-arch',
			},
			sidebar: [
                {
                    label: 'install',
                    autogenerate: { directory: 'install' },
                },
				{
					label: 'Tech used',
					items: [
						// Each item here is one entry in the navigation menu.
						{ label: "XORG", link: "/tech/xorg/" },
                        { label: "Display Manager", link: "/tech/lightdm/" },
                        { label: "DWM", link: "/tech/dwm/" },
					],
                    // autogenerate: { directory: 'tech' },
				},
			],
		}),
	],
});
