.class Lio/agora/rtc/gl/GlRectDrawer$Shader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/GlRectDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Shader"
.end annotation


# instance fields
.field public final glShader:Lio/agora/rtc/gl/GlShader;

.field public final texMatrixLocation:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentShader"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Lio/agora/rtc/gl/GlShader;

    .line 6
    .line 7
    .line 8
    const-string/jumbo v1, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1, p1}, Lio/agora/rtc/gl/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    iput-object v0, p0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    .line 14
    .line 15
    .line 16
    const-string/jumbo p1, "texMatrix"

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    .line 20
    move-result p1

    .line 21
    .line 22
    iput p1, p0, Lio/agora/rtc/gl/GlRectDrawer$Shader;->texMatrixLocation:I

    .line 23
    return-void
.end method
