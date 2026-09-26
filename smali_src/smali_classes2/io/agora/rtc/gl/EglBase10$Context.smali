.class public Lio/agora/rtc/gl/EglBase10$Context;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/agora/rtc/gl/EglBase$Context;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/gl/EglBase10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private final eglContext:Ljavax/microedition/khronos/egl/EGLContext;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/egl/EGLContext;)V
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
    iput-object p1, p0, Lio/agora/rtc/gl/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 6
    return-void
.end method

.method static synthetic access$000(Lio/agora/rtc/gl/EglBase10$Context;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Lio/agora/rtc/gl/EglBase10$Context;->eglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 3
    return-object p0
.end method


# virtual methods
.method public getNativeEglContext()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
