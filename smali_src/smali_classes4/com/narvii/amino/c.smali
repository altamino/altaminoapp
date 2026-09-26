.class public final synthetic Lcom/narvii/amino/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/amino/FeaturedUserRecyclerView;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/amino/FeaturedUserRecyclerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/amino/c;->a:Lcom/narvii/amino/FeaturedUserRecyclerView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/amino/c;->a:Lcom/narvii/amino/FeaturedUserRecyclerView;

    invoke-static {v0, p1}, Lcom/narvii/amino/FeaturedUserRecyclerView$InfluencerAdapter;->h(Lcom/narvii/amino/FeaturedUserRecyclerView;Landroid/view/View;)V

    return-void
.end method
