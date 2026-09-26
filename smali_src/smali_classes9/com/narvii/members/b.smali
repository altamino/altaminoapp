.class public final synthetic Lcom/narvii/members/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/members/NewMemberListRow;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/members/NewMemberListRow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/members/b;->a:Lcom/narvii/members/NewMemberListRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/members/b;->a:Lcom/narvii/members/NewMemberListRow;

    invoke-static {v0, p1}, Lcom/narvii/members/NewMemberListRow;->a(Lcom/narvii/members/NewMemberListRow;Landroid/view/View;)V

    return-void
.end method
