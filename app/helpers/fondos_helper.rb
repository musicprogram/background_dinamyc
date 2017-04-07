module FondosHelper
    def show_bg
        "
            background: url(#{@fondo.image_png}),  url(#{@fondo.image_jpg});
    		height: 600px;
    		background-repeat:no-repeat;
    		background-size:contain;
    		background-position:center;
		"
    end
    
end
