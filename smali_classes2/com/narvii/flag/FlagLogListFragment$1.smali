.class Lcom/narvii/flag/FlagLogListFragment$1;
.super Ljava/lang/Object;
.source "FlagLogListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/FlagLogListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/FlagLogListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/flag/FlagLogListFragment;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/narvii/flag/FlagLogListFragment$1;->this$0:Lcom/narvii/flag/FlagLogListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 43
    iget-object p1, p0, Lcom/narvii/flag/FlagLogListFragment$1;->this$0:Lcom/narvii/flag/FlagLogListFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->finish()V

    return-void
.end method
