.class public final synthetic Lcom/narvii/account/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/SetPhoneNumberFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/SetPhoneNumberFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/n0;->a:Lcom/narvii/account/SetPhoneNumberFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/n0;->a:Lcom/narvii/account/SetPhoneNumberFragment;

    invoke-static {v0, p1}, Lcom/narvii/account/SetPhoneNumberFragment;->r(Lcom/narvii/account/SetPhoneNumberFragment;Landroid/view/View;)V

    return-void
.end method
