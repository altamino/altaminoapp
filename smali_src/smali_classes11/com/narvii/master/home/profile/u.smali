.class public final synthetic Lcom/narvii/master/home/profile/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/widget/WalletBalanceView$OnPreClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/u;->a:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    return-void
.end method


# virtual methods
.method public final onPreClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/profile/u;->a:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {v0}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->v(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V

    return-void
.end method
