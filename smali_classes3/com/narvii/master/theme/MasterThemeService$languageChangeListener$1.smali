.class final Lcom/narvii/master/theme/MasterThemeService$languageChangeListener$1;
.super Ljava/lang/Object;
.source "MasterThemeService.kt"

# interfaces
.implements Lcom/narvii/language/LanguageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/theme/MasterThemeService;-><init>(Lcom/narvii/app/NVContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/master/theme/MasterThemeService;


# direct methods
.method constructor <init>(Lcom/narvii/master/theme/MasterThemeService;)V
    .locals 0

    iput-object p1, p0, Lcom/narvii/master/theme/MasterThemeService$languageChangeListener$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLanguageChanged(Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/narvii/master/theme/MasterThemeService$languageChangeListener$1;->this$0:Lcom/narvii/master/theme/MasterThemeService;

    invoke-static {v0, p1}, Lcom/narvii/master/theme/MasterThemeService;->access$sendMasterThemeRequest(Lcom/narvii/master/theme/MasterThemeService;Ljava/lang/String;)V

    return-void
.end method
