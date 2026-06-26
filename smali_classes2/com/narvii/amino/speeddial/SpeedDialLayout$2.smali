.class Lcom/narvii/amino/speeddial/SpeedDialLayout$2;
.super Ljava/lang/Object;
.source "SpeedDialLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/speeddial/SpeedDialLayout;->updateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialLayout;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iget-object v1, p0, Lcom/narvii/amino/speeddial/SpeedDialLayout$2;->this$0:Lcom/narvii/amino/speeddial/SpeedDialLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    return-void
.end method
