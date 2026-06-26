.class public abstract Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;
.super Ljava/lang/Object;
.source "ISceneVideoGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/video/interfaces/ISceneVideoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract abort()V
.end method

.method public abstract execute()V
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/narvii/video/interfaces/ISceneVideoGenerator$Task;->id:Ljava/lang/String;

    return-object v0
.end method

.method public abstract pause()V
.end method
