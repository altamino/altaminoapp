.class Lcom/narvii/widget/Gallery$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/Gallery;->onKeyUp(ILandroid/view/KeyEvent;)Z
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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/Gallery$2;->this$0:Lcom/narvii/widget/Gallery;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/widget/Gallery$2;->this$0:Lcom/narvii/widget/Gallery;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/widget/Gallery;->h(Lcom/narvii/widget/Gallery;)V

    .line 6
    return-void
.end method
