.class public final synthetic Lcom/narvii/wallet/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/q;->a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/q;->a:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    invoke-static {v0, p1}, Lcom/narvii/wallet/MembershipMainRecyclerFragment;->x(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
