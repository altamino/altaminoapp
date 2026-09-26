.class public final synthetic Lcom/narvii/wallet/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/wallet/MembershipSubscribeFragment;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/z;->a:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iput-object p2, p0, Lcom/narvii/wallet/z;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/wallet/z;->a:Lcom/narvii/wallet/MembershipSubscribeFragment;

    iget-object v1, p0, Lcom/narvii/wallet/z;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/narvii/wallet/MembershipSubscribeFragment;->n(Lcom/narvii/wallet/MembershipSubscribeFragment;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
