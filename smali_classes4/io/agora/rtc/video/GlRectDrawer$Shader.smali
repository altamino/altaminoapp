.class Lio/agora/rtc/video/GlRectDrawer$Shader;
.super Ljava/lang/Object;
.source "GlRectDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/video/GlRectDrawer;
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

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lio/agora/rtc/gl/GlShader;

    const-string v1, "varying vec2 interp_tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\n\nuniform mat4 texMatrix;\n\nvoid main() {\n    gl_Position = in_pos;\n    interp_tc = (texMatrix * in_tc).xy;\n}\n"

    invoke-direct {v0, v1, p1}, Lio/agora/rtc/gl/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    .line 134
    iget-object p1, p0, Lio/agora/rtc/video/GlRectDrawer$Shader;->glShader:Lio/agora/rtc/gl/GlShader;

    const-string v0, "texMatrix"

    invoke-virtual {p1, v0}, Lio/agora/rtc/gl/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/agora/rtc/video/GlRectDrawer$Shader;->texMatrixLocation:I

    return-void
.end method
