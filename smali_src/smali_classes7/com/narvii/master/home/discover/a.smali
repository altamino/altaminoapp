.class public final synthetic Lcom/narvii/master/home/discover/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/discover/DiscoverTabFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/discover/DiscoverTabFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/a;->a:Lcom/narvii/master/home/discover/DiscoverTabFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/discover/a;->a:Lcom/narvii/master/home/discover/DiscoverTabFragment;

    invoke-static {v0, p1}, Lcom/narvii/master/home/discover/DiscoverTabFragment;->q(Lcom/narvii/master/home/discover/DiscoverTabFragment;Landroid/view/View;)V

    return-void
.end method
