.class public final synthetic Lcom/narvii/master/home/discover/adapter/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/paging/adapter/NVRecyclerViewBaseAdapter$DataSetChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/discover/adapter/b;->a:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    return-void
.end method


# virtual methods
.method public final onDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/discover/adapter/b;->a:Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;

    invoke-static {v0}, Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;->i(Lcom/narvii/master/home/discover/adapter/AdsModuleHorizontalAdapter;)V

    return-void
.end method
