.class public final synthetic Lcom/narvii/members/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/members/PeopleListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/members/PeopleListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/members/c;->a:Lcom/narvii/members/PeopleListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/members/c;->a:Lcom/narvii/members/PeopleListFragment;

    invoke-static {v0, p1}, Lcom/narvii/members/PeopleListFragment;->t(Lcom/narvii/members/PeopleListFragment;Landroid/view/View;)V

    return-void
.end method
