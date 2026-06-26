.class public final synthetic Lcom/narvii/prefs/-$$Lambda$AccountSettingFragment$Adapter$kpqEocbyO5EqgtiDaWShHI58z_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/prefs/AccountSettingFragment$Adapter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/prefs/-$$Lambda$AccountSettingFragment$Adapter$kpqEocbyO5EqgtiDaWShHI58z_0;->f$0:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/prefs/-$$Lambda$AccountSettingFragment$Adapter$kpqEocbyO5EqgtiDaWShHI58z_0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/narvii/prefs/-$$Lambda$AccountSettingFragment$Adapter$kpqEocbyO5EqgtiDaWShHI58z_0;->f$0:Lcom/narvii/prefs/AccountSettingFragment$Adapter;

    iget-object v1, p0, Lcom/narvii/prefs/-$$Lambda$AccountSettingFragment$Adapter$kpqEocbyO5EqgtiDaWShHI58z_0;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/narvii/list/prefs/PrefsEntry;

    invoke-virtual {v0, v1, p1}, Lcom/narvii/prefs/AccountSettingFragment$Adapter;->lambda$buildCells$0$AccountSettingFragment$Adapter(Ljava/lang/String;Lcom/narvii/list/prefs/PrefsEntry;)V

    return-void
.end method
