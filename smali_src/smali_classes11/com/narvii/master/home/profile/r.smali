.class public final synthetic Lcom/narvii/master/home/profile/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/home/profile/GlobalProfileFragment;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/home/profile/GlobalProfileFragment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/home/profile/r;->a:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    iput-boolean p2, p0, Lcom/narvii/master/home/profile/r;->b:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/narvii/master/home/profile/r;->a:Lcom/narvii/master/home/profile/GlobalProfileFragment;

    iget-boolean v1, p0, Lcom/narvii/master/home/profile/r;->b:Z

    invoke-static {v0, v1, p1, p2}, Lcom/narvii/master/home/profile/GlobalProfileFragment;->F(Lcom/narvii/master/home/profile/GlobalProfileFragment;ZLandroid/content/DialogInterface;I)V

    return-void
.end method
