.class public final synthetic Lcom/narvii/master/theme/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/language/LanguageChangeListener;


# instance fields
.field public final synthetic a:Lcom/narvii/master/theme/MasterThemeService;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/master/theme/MasterThemeService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/master/theme/b;->a:Lcom/narvii/master/theme/MasterThemeService;

    return-void
.end method


# virtual methods
.method public final onLanguageChanged(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/master/theme/b;->a:Lcom/narvii/master/theme/MasterThemeService;

    invoke-static {v0, p1}, Lcom/narvii/master/theme/MasterThemeService;->a(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/String;)V

    return-void
.end method
