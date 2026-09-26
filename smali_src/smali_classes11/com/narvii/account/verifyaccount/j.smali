.class public final synthetic Lcom/narvii/account/verifyaccount/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;

.field public final synthetic b:Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/verifyaccount/j;->a:Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;

    iput-object p2, p0, Lcom/narvii/account/verifyaccount/j;->b:Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/account/verifyaccount/j;->a:Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;

    iget-object v1, p0, Lcom/narvii/account/verifyaccount/j;->b:Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;

    invoke-static {v0, v1, p1}, Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;->q(Lcom/narvii/account/verifyaccount/VerifyAccountChooseIdentityFragment;Lcom/narvii/amino/databinding/FragmentVerifyAccountChooseIdentityBinding;Landroid/view/View;)V

    return-void
.end method
