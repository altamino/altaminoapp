.class Lcom/narvii/master/search/GlobalUserSearchFragment$2;
.super Lcom/narvii/master/search/AminoIdMatchedAdapter;
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

    .line 69
    iput-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$2;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    invoke-direct {p0, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .line 72
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 73
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$2;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    iget-object v0, v0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
