.class Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SpeedDialHeaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;


# direct methods
.method constructor <init>(Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$3;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 198
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 199
    iget-object p1, p0, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout$3;->this$0:Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;

    invoke-virtual {p1}, Lcom/narvii/amino/speeddial/SpeedDialHeaderLayout;->logSpeedDialImpression()V

    return-void
.end method
