import dracula.draw

config.load_autoconfig()

dracula.draw.blood(c,{
    'spacing': {
        'vertical':6,
        'horizontal':8
        }
    })

config.bind('`', 'tab-next')
config.bind('~', 'tab-prev')

