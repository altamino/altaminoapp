.class public final synthetic Lcom/narvii/account/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/account/SignUpAddProfileFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/account/SignUpAddProfileFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/v0;->a:Lcom/narvii/account/SignUpAddProfileFragment;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/v0;->a:Lcom/narvii/account/SignUpAddProfileFragment;

    invoke-static {v0, p1, p2}, Lcom/narvii/account/SignUpAddProfileFragment;->u(Lcom/narvii/account/SignUpAddProfileFragment;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
