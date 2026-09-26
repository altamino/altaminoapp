.class public Lio/agora/rtc/gl/EglBase14$Context;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/EglBase$Context;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/EglBase14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final egl14Context:Landroid/opengl/EGLContext;


# direct methods
.method public constructor <init>(Landroid/opengl/EGLContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglContext"
        }
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    iput-object p1, p0, Lio/agora/rtc/gl/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    .line 6
    return-void
.end method

.method static synthetic access$100(Lio/agora/rtc/gl/EglBase14$Context;)Landroid/opengl/EGLContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/gl/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getNativeEglContext()J
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-static {}, Lio/agora/rtc/gl/EglBase14;->access$000()I

    .line 4
    move-result v0

    .line 5
    .line 6
    const/16 v1, 0x15

    .line 7
    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/opengl/EGLObjectHandle;->getNativeHandle()J

    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lio/agora/rtc/gl/EglBase14$Context;->egl14Context:Landroid/opengl/EGLContext;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/opengl/EGLObjectHandle;->getHandle()I

    .line 21
    move-result v0

    .line 22
    int-to-long v0, v0

    .line 23
    :goto_0
    return-wide v0
.end method
