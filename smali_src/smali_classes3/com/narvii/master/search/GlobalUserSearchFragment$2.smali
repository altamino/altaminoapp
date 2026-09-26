.class Lcom/narvii/master/search/GlobalUserSearchFragment$2;
.super Lcom/narvii/master/search/AminoIdMatchedAdapter;
.source "SourceFile"


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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$2;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/narvii/master/search/AminoIdMatchedAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    .line 5
    iget-object v0, p0, Lcom/narvii/master/search/GlobalUserSearchFragment$2;->this$0:Lcom/narvii/master/search/GlobalUserSearchFragment;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/narvii/master/search/GlobalUserSearchFragment;->adapter:Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/narvii/master/search/GlobalUserSearchFragment$Adapter;->notifyDataSetChanged()V

    .line 13
    :cond_0
    return-void
.end method
