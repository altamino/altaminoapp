.class public final synthetic Lcom/narvii/user/profile/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/user/profile/UserProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/user/profile/UserProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/user/profile/e;->a:Lcom/narvii/user/profile/UserProfileFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/user/profile/e;->a:Lcom/narvii/user/profile/UserProfileFragment;

    invoke-static {v0, p1}, Lcom/narvii/user/profile/UserProfileFragment;->v(Lcom/narvii/user/profile/UserProfileFragment;Landroid/view/View;)V

    return-void
.end method
