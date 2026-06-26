.class Lcom/narvii/chat/hangout/HangoutListFragment$3;
.super Lcom/narvii/list/SwitchAdapter;
.source "HangoutListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/hangout/HangoutListFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/hangout/HangoutListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/chat/hangout/HangoutListFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/narvii/chat/hangout/HangoutListFragment$3;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    invoke-direct {p0, p2}, Lcom/narvii/list/SwitchAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/narvii/chat/hangout/HangoutListFragment$3;->this$0:Lcom/narvii/chat/hangout/HangoutListFragment;

    iget-object v0, v0, Lcom/narvii/chat/hangout/HangoutListFragment;->instantSearchListener:Lcom/narvii/search/InstantSearchListener;

    invoke-virtual {v0}, Lcom/narvii/search/InstantSearchListener;->getKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/narvii/list/ProxyAdapter;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
