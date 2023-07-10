module inochi2d.core.render.texture;
import inochi2d.core.texture;

/**
    A texture bound to a specific rendering backend.
*/
abstract
class Texture {
public:
    /**
        Disposes of the texture
    */
    abstract void dispose();

    /**
        Gets the width of the texture
    */
    abstract int getWidth();
    
    /**
        Gets the height of the texture
    */
    abstract int getHeight();
    
    /**
        Gets the amount of channels in the texture
    */
    abstract int getChannels();

    /**
        Gets the amount of bits per pixel in the texture
    */
    abstract int getBitsPerPixel();

    /**
        Gets the runtime UUID for the texture
    */
    abstract uint getRuntimeUUID();

    /**
        Sets the runtime UUID for the texture
    */
    abstract void setRuntimeUUID(uint uuid);

    /**
        Gets the wrapping mode of the texture
    */
    abstract Wrapping getWrapping();
    
    /**
        Gets the filtering mode of the texture
    */
    abstract Filtering getFiltering();

    /**
        Sets the data of the texture
    */
    abstract void setData(TextureData data);
    
    /**
        Sets the data of the texture
    */
    abstract void setData(ubyte[] data);

    /**
        Sets the wrapping mode of the texture
    */
    abstract void setWrapping(Wrapping wrapping);

    /**
        Sets the filtering mode of the texture
    */
    abstract void setFiltering(Filtering filtering);

    /**
        Generates a mipmap.

        This functionality is OPTIONAL
    */
    void genMipmap() { }
    
    /**
        Sets anisotropic filtering mode.

        This functionality is OPTIONAL
    */
    void setAnisotropy(float value) { }

    /**
        Saves a PNG

        This functionality is OPTIONAL
    */
    void save(string file) { }

    /**
        Gets the texture data for the texture

        This functionality is OPTIONAL
    */
    ubyte[] getTextureData(bool unmultiply=false) { return (ubyte[]).init; }
}