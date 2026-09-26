.class public final synthetic Lcom/narvii/master/home/profile/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/profile/GlobalProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/y;->a:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/profile/y;->a:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->J(Lcom/narvii/master/home/profile/GlobalProfileFragment;Landroid/content/DialogInterface;I)V

    return-void
.end method
