.class Lcom/narvii/widget/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/narvii/widget/Gallery;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/narvii/widget/Gallery$1;->this$0:Lcom/narvii/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/narvii/widget/Gallery$1;->this$0:Lcom/narvii/widget/Gallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/narvii/widget/Gallery;->access$002(Lcom/narvii/widget/Gallery;Z)Z

    .line 129
    iget-object v0, p0, Lcom/narvii/widget/Gallery$1;->this$0:Lcom/narvii/widget/Gallery;

    invoke-virtual {v0}, Lcom/narvii/widget/Gallery;->selectionChanged()V

    return-void
.end method
