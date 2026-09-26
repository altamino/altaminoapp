.class public final synthetic Lcom/narvii/account/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/account/k0;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/account/k0;->a:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/narvii/account/PushSettingListFragment$GlobalNotificationAdapter;->f(Ljava/lang/Object;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
