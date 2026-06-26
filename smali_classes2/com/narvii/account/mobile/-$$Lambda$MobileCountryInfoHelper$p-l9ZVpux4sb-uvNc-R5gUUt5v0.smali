.class public final synthetic Lcom/narvii/account/mobile/-$$Lambda$MobileCountryInfoHelper$p-l9ZVpux4sb-uvNc-R5gUUt5v0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/narvii/account/mobile/-$$Lambda$MobileCountryInfoHelper$p-l9ZVpux4sb-uvNc-R5gUUt5v0;->f$0:I

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget v0, p0, Lcom/narvii/account/mobile/-$$Lambda$MobileCountryInfoHelper$p-l9ZVpux4sb-uvNc-R5gUUt5v0;->f$0:I

    invoke-static {v0, p1}, Lcom/narvii/account/mobile/MobileCountryInfoHelper;->lambda$createSelectCountryDialog$0(ILandroid/content/DialogInterface;)V

    return-void
.end method
