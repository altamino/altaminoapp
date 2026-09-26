.class public final synthetic Lcom/narvii/amino/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/amino/FeaturedUserRecyclerView;

.field public final synthetic b:Lcom/narvii/model/User;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/amino/FeaturedUserRecyclerView;Lcom/narvii/model/User;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/b;->a:Lcom/narvii/amino/FeaturedUserRecyclerView;

    iput-object p2, p0, Lcom/narvii/amino/b;->b:Lcom/narvii/model/User;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/b;->a:Lcom/narvii/amino/FeaturedUserRecyclerView;

    iget-object v1, p0, Lcom/narvii/amino/b;->b:Lcom/narvii/model/User;

    invoke-static {v0, v1, p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->g(Lcom/narvii/amino/FeaturedUserRecyclerView;Lcom/narvii/model/User;Landroid/view/View;)V

    return-void
.end method
