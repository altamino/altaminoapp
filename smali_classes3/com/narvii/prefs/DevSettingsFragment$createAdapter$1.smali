.class final Lcom/narvii/prefs/DevSettingsFragment$createAdapter$1;
.super Ljava/lang/Object;
.source "DevSettingsFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/prefs/DevSettingsFragment;->createAdapter(Landroid/os/Bundle;)Landroid/widget/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/narvii/prefs/DevSettingsFragment$Adapter;


# direct methods
.method constructor <init>(Lcom/narvii/prefs/DevSettingsFragment$Adapter;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$createAdapter$1;->$adapter:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/narvii/prefs/DevSettingsFragment$createAdapter$1;->$adapter:Lcom/narvii/prefs/DevSettingsFragment$Adapter;

    invoke-virtual {p1}, Lcom/narvii/list/prefs/PrefsAdapter;->notifyDataSetChanged()V

    return-void
.end method
