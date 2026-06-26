.class Lcom/narvii/master/search/GlobalUserSearchFragment$3;
.super Lcom/narvii/list/DividerAdapter;
.source "GlobalUserSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/search/GlobalUserSearchFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;


# direct methods
.method constructor <init>(Lcom/narvii/master/search/GlobalUserSearchFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$3;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getDividerLayoutId()I
    .locals 1

    const v0, 0x7f0b04bb

    return v0
.end method
