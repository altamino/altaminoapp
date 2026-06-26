.class Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$1;
.super Ljava/lang/Object;
.source "LanguageSettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

.field final synthetic val$item:Lcom/narvii/language/LanguageSpec;


# direct methods
.method constructor <init>(Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;Lcom/narvii/language/LanguageSpec;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$1;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$1;->val$item:Lcom/narvii/language/LanguageSpec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 167
    iget-object p1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$1;->this$1:Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;

    iget-object v0, p1, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter;->this$0:Lcom/narvii/master/setting/LanguageSettingFragment;

    iget-object v1, p0, Lcom/narvii/master/setting/LanguageSettingFragment$Adapter$1;->val$item:Lcom/narvii/language/LanguageSpec;

    iget-object v1, v1, Lcom/narvii/language/LanguageSpec;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/narvii/master/setting/LanguageSettingFragment;->languagePicked:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
