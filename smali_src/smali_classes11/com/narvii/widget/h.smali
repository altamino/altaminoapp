.class public final synthetic Lcom/narvii/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/widget/InfluencerRecyclerView;

.field public final synthetic b:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/widget/InfluencerRecyclerView;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/widget/h;->a:Lcom/narvii/widget/InfluencerRecyclerView;

    iput-object p2, p0, Lcom/narvii/widget/h;->b:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/widget/h;->a:Lcom/narvii/widget/InfluencerRecyclerView;

    iget-object v1, p0, Lcom/narvii/widget/h;->b:Lcom/narvii/model/User;

    invoke-static {v0, v1, p1}, Lcom/narvii/widget/InfluencerRecyclerView$InfluencerAdapter;->g(Lcom/narvii/widget/InfluencerRecyclerView;Lcom/narvii/model/User;Landroid/view/View;)V

    return-void
.end method
