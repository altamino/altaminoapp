.class Lcom/narvii/post/PostHelper$1;
.super Ljava/lang/Object;
.source "PostHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/post/PostHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/PostHelper;


# direct methods
.method constructor <init>(Lcom/narvii/post/PostHelper;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/narvii/post/PostHelper$1;->this$0:Lcom/narvii/post/PostHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/narvii/post/PostHelper$1;->this$0:Lcom/narvii/post/PostHelper;

    invoke-virtual {v0}, Lcom/narvii/post/PostHelper;->step()V

    return-void
.end method
