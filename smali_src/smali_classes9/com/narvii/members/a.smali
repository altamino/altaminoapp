.class public final synthetic Lcom/narvii/members/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/members/MemberListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/members/MemberListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/members/a;->a:Lcom/narvii/members/MemberListFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/members/a;->a:Lcom/narvii/members/MemberListFragment;

    invoke-static {v0, p1}, Lcom/narvii/members/MemberListFragment;->t(Lcom/narvii/members/MemberListFragment;Landroid/view/View;)V

    return-void
.end method
