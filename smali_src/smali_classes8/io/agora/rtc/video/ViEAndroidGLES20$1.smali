.class Lio/agora/rtc/video/ViEAndroidGLES20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/video/ViEAndroidGLES20;->releaseOpenGLResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/agora/rtc/video/ViEAndroidGLES20;


# direct methods
.method constructor <init>(Lio/agora/rtc/video/ViEAndroidGLES20;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lio/agora/rtc/video/ViEAndroidGLES20$1;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$000()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    const-string v2, "releaseOpenGLResource, value = "

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    iget-object v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20$1;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    .line 17
    .line 18
    .line 19
    invoke-static {v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$100(Lio/agora/rtc/video/ViEAndroidGLES20;)I

    .line 20
    move-result v2

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, " ,"

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    iget-object v3, p0, Lio/agora/rtc/video/ViEAndroidGLES20$1;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    .line 31
    .line 32
    .line 33
    invoke-static {v3}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$200(Lio/agora/rtc/video/ViEAndroidGLES20;)[I

    .line 34
    move-result-object v3

    .line 35
    const/4 v4, 0x0

    .line 36
    .line 37
    aget v3, v3, v4

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget-object v3, p0, Lio/agora/rtc/video/ViEAndroidGLES20$1;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    .line 46
    .line 47
    .line 48
    invoke-static {v3}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$200(Lio/agora/rtc/video/ViEAndroidGLES20;)[I

    .line 49
    move-result-object v3

    .line 50
    const/4 v5, 0x1

    .line 51
    .line 52
    aget v3, v3, v5

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    iget-object v2, p0, Lio/agora/rtc/video/ViEAndroidGLES20$1;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    .line 61
    .line 62
    .line 63
    invoke-static {v2}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$200(Lio/agora/rtc/video/ViEAndroidGLES20;)[I

    .line 64
    move-result-object v2

    .line 65
    const/4 v3, 0x2

    .line 66
    .line 67
    aget v2, v2, v3

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-static {v0, v1}, Lio/agora/rtc/internal/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$1;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    .line 80
    .line 81
    .line 82
    invoke-static {v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$100(Lio/agora/rtc/video/ViEAndroidGLES20;)I

    .line 83
    move-result v0

    .line 84
    .line 85
    .line 86
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 87
    .line 88
    iget-object v0, p0, Lio/agora/rtc/video/ViEAndroidGLES20$1;->this$0:Lio/agora/rtc/video/ViEAndroidGLES20;

    .line 89
    .line 90
    .line 91
    invoke-static {v0}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$200(Lio/agora/rtc/video/ViEAndroidGLES20;)[I

    .line 92
    move-result-object v0

    .line 93
    const/4 v1, 0x3

    .line 94
    .line 95
    .line 96
    invoke-static {v1, v0, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 97
    .line 98
    .line 99
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 100
    move-result v0

    .line 101
    .line 102
    if-eqz v0, :cond_0

    .line 103
    .line 104
    .line 105
    invoke-static {}, Lio/agora/rtc/video/ViEAndroidGLES20;->access$000()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    const-string v3, "glDelete error: "

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 124
    .line 125
    .line 126
    invoke-static {v1, v0}, Lio/agora/rtc/internal/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    return-void
.end method
