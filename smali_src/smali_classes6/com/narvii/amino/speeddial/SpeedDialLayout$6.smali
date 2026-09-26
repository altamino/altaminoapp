.class Lcom/narvii/amino/speeddial/SpeedDialLayout$6;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$6;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$6;->val$lc:Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$6;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    .line 3
    .line 4
    .line 5
    invoke-static {v0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->a(Lcom/narvii/amino/speeddial/SpeedDialLayout;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$6;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lcom/narvii/amino/speeddial/SpeedDialLayout;->a(Lcom/narvii/amino/speeddial/SpeedDialLayout;)Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;

    .line 14
    move-result-object v0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$6;->val$lc:Lcom/narvii/amino/speeddial/mode/LiveCategory;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, v1}, Lcom/narvii/amino/speeddial/SpeedDialLayout$SpeedDialItemClickListener;->onNormalItemClicked(Landroid/view/View;Lcom/narvii/amino/speeddial/mode/LiveCategory;)V

    .line 20
    :cond_0
    return-void
.end method
