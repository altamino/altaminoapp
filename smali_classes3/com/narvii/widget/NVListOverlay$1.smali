.class Lcom/narvii/widget/NVListOverlay$1;
.super Ljava/lang/Object;
.source "NVListOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/NVListOverlay;->onLayout(Lcom/narvii/widget/NVListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/NVListOverlay;


# direct methods
.method constructor <init>(Lcom/narvii/widget/NVListOverlay;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/narvii/widget/NVListOverlay$1;->this$0:Lcom/narvii/widget/NVListOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/narvii/widget/NVListOverlay$1;->this$0:Lcom/narvii/widget/NVListOverlay;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
