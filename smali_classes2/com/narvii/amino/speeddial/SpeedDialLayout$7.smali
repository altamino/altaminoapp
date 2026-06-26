.class Lcom/narvii/amino/speeddial/SpeedDialLayout$7;
.super Ljava/lang/Object;
.source "SpeedDialLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateNormalItemViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

.field final synthetic val$lc:Lcom/narvii/amino/speeddial/mode/LiveCategory;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$7;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$7;->val$lc:Lcom/narvii/amino/speeddial/mode/LiveCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$7;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-static {v0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->access$000(Lcom/narvii/amino/speeddial/SpeedDialLayout;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$7;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-static {v0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->access$000(Lcom/narvii/amino/speeddial/SpeedDialLayout;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$7;->val$lc:Lcom/narvii/amino/speeddial/mode/LiveCategory;

    invoke-interface {v0, p1, v1}, Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;->onNormalItemClicked(Landroid/view/View;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    :cond_0
    return-void
.end method
