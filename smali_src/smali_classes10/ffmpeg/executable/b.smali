.class public final synthetic Lffmpeg/executable/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/editors/ffmpeg/FFmpegJni$IFFMpegExecProgressCallback;


# instance fields
.field public final synthetic a:Lffmpeg/executable/a$b;


# direct methods
.method public synthetic constructor <init>(Lffmpeg/executable/a$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffmpeg/executable/b;->a:Lffmpeg/executable/a$b;

    return-void
.end method


# virtual methods
.method public final onProgress(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lffmpeg/executable/b;->a:Lffmpeg/executable/a$b;

    invoke-static {v0, p1}, Lffmpeg/executable/a$b;->b(Lffmpeg/executable/a$b;F)V

    return-void
.end method
