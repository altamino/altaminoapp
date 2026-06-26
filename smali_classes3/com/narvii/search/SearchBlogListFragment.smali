.class public Lcom/narvii/search/SearchBlogListFragment;
.super Lcom/narvii/list/NVListFragment;
.source "SearchBlogListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/narvii/search/SearchBlogListFragment$Adapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/narvii/list/NVListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
    .locals 0

    .line 21
    new-instance p1, Lcom/narvii/search/SearchBlogListFragment$Adapter;

    invoke-direct {p1, p0}, Lcom/narvii/search/SearchBlogListFragment$Adapter;-><init>(Lcom/narvii/search/SearchBlogListFragment;)V

    return-object p1
.end method
