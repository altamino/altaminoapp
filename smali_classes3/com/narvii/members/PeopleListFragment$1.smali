.class Lcom/narvii/members/PeopleListFragment$1;
.super Ljava/lang/Object;
.source "PeopleListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/members/PeopleListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/members/PeopleListFragment;


# direct methods
.method constructor <init>(Lcom/narvii/members/PeopleListFragment;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/narvii/members/PeopleListFragment$1;->this$0:Lcom/narvii/members/PeopleListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 52
    iget-object p1, p0, Lcom/narvii/members/PeopleListFragment$1;->this$0:Lcom/narvii/members/PeopleListFragment;

    iget-object p1, p1, Lcom/narvii/members/PeopleListFragment;->mergeAdapter:Lcom/narvii/members/PeopleListAdapter;

    invoke-virtual {p1}, Lcom/narvii/members/PeopleListAdapter;->retry()V

    return-void
.end method
