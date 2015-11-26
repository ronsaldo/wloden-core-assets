cbuffer CanvasViewport : register(b0)
{
    matrix projectionMatrix;
    matrix viewMatrix;
}

struct VertexInput
{
    float4 position : A;
    float4 color : C;
};

struct VertexOutput
{
    float4 color : COLOR;
    float4 position : SV_POSITION;
};

VertexOutput main(VertexInput input)
{
    VertexOutput output;
    output.color = input.color;
    output.position = mul(projectionMatrix, mul(viewMatrix, input.position));
    return output;
}
