.class final Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$onCompileCompleted$3;
.super Ljava/lang/Object;
.source "MeisheSceneVideoGenerator.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->onCompileCompleted(Lcom/meicam/sdk/NvsTimeline;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;


# direct methods
.method constructor <init>(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$onCompileCompleted$3;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator$onCompileCompleted$3;->this$0:Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;

    invoke-static {v0}, Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;->access$execute(Lcom/narvii/editor/generator/MeisheSceneVideoGenerator;)V

    return-void
.end method
