#ifndef _CALCULATOR_CALCULATOR_H_
#define _CALCULATOR_CALCULATOR_H_


#ifdef calculator_EXPORTS
#define CALCULATOR_API __declspec(dllexport)
#else
#define CALCULATOR_API __declspec(dllimport)
#endif



class Mask
{
    Mask()
    {
        
    }

private:
    int w_;
    int h_;
    void* data_;
};




CALCULATOR_API void hello();


#endif

