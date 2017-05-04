.class public Lcom/RamzDroid/ADS/AzHarDariSokhaniActivity;
.super Lorg/apache/cordova/DroidGap;
.source "AzHarDariSokhaniActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lorg/apache/cordova/DroidGap;-><init>()V

    return-void
.end method

.method private applyMenuChoice(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 60
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 41
    :pswitch_0
    invoke-virtual {p0}, Lcom/RamzDroid/ADS/AzHarDariSokhaniActivity;->finish()V

    goto :goto_0

    .line 45
    :pswitch_1
    const-string v1, "market://details?id=com.RamzDroid.ADSPro"

    .line 46
    .local v1, myUrl:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v3}, Lcom/RamzDroid/ADS/AzHarDariSokhaniActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 50
    .end local v1           #myUrl:Ljava/lang/String;
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "text/plain"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "\u0627\u0632 \u0647\u0631 \u062f\u0631\u06cc \u0633\u062e\u0646\u06cc (\u0631\u0627\u06cc\u06af\u0627\u0646)"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v3, "android.intent.extra.TEXT"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v3, "mailto:arefprivate@gmail.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    invoke-virtual {p0, v0}, Lcom/RamzDroid/ADS/AzHarDariSokhaniActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x7f070000
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 18
    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const-string v0, "splashscreen"

    const v1, 0x7f020004

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->setIntegerProperty(Ljava/lang/String;I)V

    .line 20
    const-string v0, "file:///android_asset/www/index.html"

    const/16 v1, 0x7d0

    invoke-super {p0, v0, v1}, Lorg/apache/cordova/DroidGap;->loadUrl(Ljava/lang/String;I)V

    .line 21
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setVerticalScrollBarEnabled(Z)V

    .line 22
    iget-object v0, p0, Lorg/apache/cordova/DroidGap;->appView:Lorg/apache/cordova/CordovaWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CordovaWebView;->setScrollBarStyle(I)V

    .line 23
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/RamzDroid/ADS/AzHarDariSokhaniActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/RamzDroid/ADS/AzHarDariSokhaniActivity;->applyMenuChoice(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/cordova/DroidGap;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
