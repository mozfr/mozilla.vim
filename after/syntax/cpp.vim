" Vim syntax file
" Language:    C++
" Maintainer:  Fabien Cazenave (:kaze)
" Last Change: 2012-04-03

" Put this file in ~/.vim/after/syntax/

" kaze's extensions
syn match cppOperator        "&"
syn match cppOperator        "*"
syn match cppOperator        "::"
syn match cppOperator        "->"

" Mozilla Types and Constants
syn keyword moz_type         PRBool PRSize PROffset32 PROffset64 PRUptrdiff PRUnichar PRPackedBool
syn keyword moz_type         PRInt8 PRInt16 PRInt32 PRInt64 PRUint8 PRUint16 PRUint32 PRUint64
syn keyword moz_boolean      PR_TRUE PR_FALSE
syn keyword moz_constant     nsnull NS_OK NS_HTML_TAG_MAX
syn keyword moz_type_ns      nsAString nsCOMPtr nsCOMArray nsRefPtr nsWeakPtr nsresult nsTArray
"syn keyword moz_type_ns      nsAutoEditBatch nsAutoEditInitRulesTrigger nsAutoInsertContainerSelNotify
"syn keyword moz_type_ns      nsAutoLockListener nsAutoLockRulesSniffing nsAutoLockRulesSniffing
"syn keyword moz_type_ns      nsAutoMoveNodeSelNotify nsAutoPlaceHolderBatch nsAutoPtr
"syn keyword moz_type_ns      nsAutoRemoveContainerSelNotify nsAutoReplaceContainerSelNotify nsAutoRules
"syn keyword moz_type_ns      nsAutoScriptBlockerSuppressNodeRemoved nsAutoSelectionReset nsAutoString
"syn keyword moz_type_ns      nsAutoTArray nsAutoTrackDOMPoint nsAutoTxnsConserveSelection
"syn keyword moz_type_ns      nsAutoUpdateViewBatch
syn keyword moz_type_ns      nsAutoPtr nsAutoString nsAutoTArray
syn keyword moz_type_ns      NS_IMETHOD NS_IMETHODIMP

" # Mozilla Components
" find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^\(class\|interface\)\s*nsI" '{}' \;
"   | sed 's/\(:\|;\|,\|{\).*$//' | sed 's/^.*nsI/nsI/' | sed 's/\s*$//'                 \
"   | sort -u | grep nsIDOM -v
  syn keyword moz_component  nsIAboutModule nsIAbsorbingTransaction nsIAccessibilityService nsIAccessible
  syn keyword moz_component  nsIAccessibleApplication nsIAccessibleCaretMoveEvent nsIAccessibleCoordinateType
  syn keyword moz_component  nsIAccessibleDocument nsIAccessibleEditableText nsIAccessibleEvent
  syn keyword moz_component  nsIAccessibleHyperLink nsIAccessibleHyperText nsIAccessibleImage
  syn keyword moz_component  nsIAccessibleProvider nsIAccessibleRelation nsIAccessibleRetrieval
  syn keyword moz_component  nsIAccessibleRole nsIAccessibleScrollType nsIAccessibleSelectable
  syn keyword moz_component  nsIAccessibleStateChangeEvent nsIAccessibleStates nsIAccessibleTable
  syn keyword moz_component  nsIAccessibleTableCell nsIAccessibleTableChangeEvent nsIAccessibleText
  syn keyword moz_component  nsIAccessibleTextChangeEvent nsIAccessibleValue nsIAccessibleWin32Object
  syn keyword moz_component  nsIAccessNode nsIAlertsProgressListener nsIAlertsService
  syn keyword moz_component  nsIAnimationFrameListener nsIAnnotationObserver nsIAnnotationService
  syn keyword moz_component  nsIAnonymousContentCreator nsIAppleFileDecoder nsIApplicationCache
  syn keyword moz_component  nsIApplicationCacheChannel nsIApplicationCacheContainer
  syn keyword moz_component  nsIApplicationCacheNamespace nsIApplicationCacheService
  syn keyword moz_component  nsIApplicationUpdateService nsIAppShell nsIAppShellService nsIAppStartup
  syn keyword moz_component  nsIArray nsIASN1Object nsIASN1PrintableItem nsIASN1Sequence nsIASN1Tree
  syn keyword moz_component  nsIAssociatedContentSecurity nsIAsyncInputStream nsIAsyncOutputStream
  syn keyword moz_component  nsIAsyncStreamCopier nsIAsyncVerifyRedirectCallback nsIAtom nsIAtomService
  syn keyword moz_component  nsIAttribute nsIAuthInformation nsIAuthModule nsIAuthPrompt nsIAuthPrompt2
  syn keyword moz_component  nsIAuthPromptAdapterFactory nsIAuthPromptCallback nsIAuthPromptProvider
  syn keyword moz_component  nsIAutoCompleteController nsIAutoCompleteInput nsIAutoCompleteItem
  syn keyword moz_component  nsIAutoCompleteListener nsIAutoCompleteObserver nsIAutoCompletePopup
  syn keyword moz_component  nsIAutoCompleteResult nsIAutoCompleteResults nsIAutoCompleteSearch
  syn keyword moz_component  nsIAutoCompleteSession nsIAutoCompleteSimpleResult
  syn keyword moz_component  nsIAutoCompleteSimpleResultListener nsIAutoCompleteStatus nsIAutoConfig
  syn keyword moz_component  nsIBadCertListener2 nsIBaseDOMException nsIBaseStream nsIBaseWindow
  syn keyword moz_component  nsIBasicDecoder nsIBasicEncoder nsIBidiKeyboard nsIBidirectionalEnumerator
  syn keyword moz_component  nsIBidirectionalIterator nsIBinaryInputStream nsIBinaryOutputStream
  syn keyword moz_component  nsIBlobBuilder nsIBlocklistPrompt nsIBlocklistService nsIBogus1 nsIBogus2
  syn keyword moz_component  nsIBoxObject nsIBrowserBoxObject nsIBrowserDOMWindow nsIBrowserGlue
  syn keyword moz_component  nsIBrowserHandler nsIBrowserHistory nsIBrowserProfileMigrator
  syn keyword moz_component  nsIBrowserSearchService nsIBufEntropyCollector nsIBufferedInputStream
  syn keyword moz_component  nsIBufferedOutputStream nsIByteBuffer nsIByteRangeRequest nsICache
  syn keyword moz_component  nsICacheDeviceInfo nsICacheEntryDescriptor nsICacheEntryInfo nsICacheInfoChannel
  syn keyword moz_component  nsICacheListener nsICacheMetaDataVisitor nsICacheService nsICacheSession
  syn keyword moz_component  nsICacheVisitor nsICachingChannel nsICancelable nsICanvasElementExternal
  syn keyword moz_component  nsICanvasGLBuffer nsICanvasGLTexture nsICanvasRenderingContextInternal
  syn keyword moz_component  nsICapturePicker nsICaseConversion nsICategoryManager nsICDocShellTreeOwner
  syn keyword moz_component  nsICertificateDialogs nsICertOverrideService nsICertPickDialogs nsICertTree
  syn keyword moz_component  nsICertTreeItem nsICertVerificationListener nsICertVerificationResult nsIChannel
  syn keyword moz_component  nsIChannelEventSink nsIChannelPolicy nsICharsetAlias nsICharsetConverterManager
  syn keyword moz_component  nsICharsetDetectionAdaptor nsICharsetDetectionObserver nsICharsetDetector
  syn keyword moz_component  nsICharsetResolver nsIChildChannel nsIChromeFrameMessageManager
  syn keyword moz_component  nsIChromeRegistry nsICipherInfo nsICipherInfoService nsIClassInfo
  syn keyword moz_component  nsIClientAuthDialogs nsIClientAuthUserDecision nsIClipboard nsIClipboardCommands
  syn keyword moz_component  nsIClipboardDragDropHookList nsIClipboardDragDropHooks nsIClipboardHelper
  syn keyword moz_component  nsIClipboardOwner nsICmdLineService nsICMSDecoder nsICMSEncoder nsICMSMessage
  syn keyword moz_component  nsICMSMessage2 nsICMSMessageErrors nsICMSSecureMessage nsICODecoder nsICollation
  syn keyword moz_component  nsICollationFactory nsICollection nsIComboboxControlFrame nsICommandController
  syn keyword moz_component  nsICommandHandler nsICommandHandlerInit nsICommandLine nsICommandLineHandler
  syn keyword moz_component  nsICommandLineRunner nsICommandLineValidator nsICommandManager nsICommandParams
  syn keyword moz_component  nsIComponentLoader nsIComponentManager nsIComponentRegistrar
  syn keyword moz_component  nsIConsoleListener nsIConsoleMessage
  syn keyword moz_component  nsIConsoleService nsIConstraintValidation nsIContainerBoxObject nsIContent
  syn keyword moz_component  nsIContentDispatchChooser nsIContentFilter nsIContentFrameMessageManager
  syn keyword moz_component  nsIContentHandler nsIContentIterator nsIContentPermissionPrompt
  syn keyword moz_component  nsIContentPermissionRequest nsIContentPolicy nsIContentPrefCallback
  syn keyword moz_component  nsIContentPrefObserver nsIContentPrefService nsIContentSecurityPolicy
  syn keyword moz_component  nsIContentSerializer nsIContentSink nsIContentSniffer nsIContentURIGrouper
  syn keyword moz_component  nsIContentView nsIContentViewer nsIContentViewerContainer nsIContentViewerEdit
  syn keyword moz_component  nsIContentViewerFile nsIContentViewManager nsIContextMenuInfo
  syn keyword moz_component  nsIContextMenuListener nsIContextMenuListener2 nsIController
  syn keyword moz_component  nsIControllerCommand nsIControllerCommandGroup nsIControllerCommandTable
  syn keyword moz_component  nsIControllerContext nsIControllers nsIConverterInputStream
  syn keyword moz_component  nsIConverterOutputStream nsICookie nsICookie2 nsICookieAcceptDialog
  syn keyword moz_component  nsICookieManager nsICookieManager2 nsICookiePermission nsICookiePromptService
  syn keyword moz_component  nsICookieService nsICrashReporter nsICRLInfo nsICRLManager nsICryptoFIPSInfo
  syn keyword moz_component  nsICryptoHash nsICryptoHMAC nsICSSAnonBoxPseudo nsICSSDeclaration
  syn keyword moz_component  nsICSSLoaderObserver nsICSSPseudoComparator nsICSSPseudoElement nsICSSRuleList
  syn keyword moz_component  nsICSSStyleRuleDOMWrapper nsICurrentCharsetListener nsICycleCollectorListener
  syn keyword moz_component  nsIDataObjCollection nsIDataSignatureVerifier nsIDataType nsIDateTimeFormat
  syn keyword moz_component  nsIDBusHandlerApp nsIDebug nsIDebug2 nsIDebugDumpContent
  syn keyword moz_component  nsIDeviceContextSpec nsIDeviceMotion nsIDeviceMotionData nsIDeviceMotionListener
  syn keyword moz_component  nsIDeviceMotionUpdate nsIDHashKey nsIDialogCreator nsIDialogParamBlock
  syn keyword moz_component  nsIDirectoryEnumerator nsIDirectoryService nsIDirectoryServiceProvider
  syn keyword moz_component  nsIDirectoryServiceProvider2 nsIDirIndex nsIDirIndexListener nsIDirIndexParser
  syn keyword moz_component  nsIDiskCacheStreamInternal nsIDNService nsIDNSListener nsIDNSRecord nsIDNSRequest
  syn keyword moz_component  nsIDNSService nsIDocCharset nsIDocShell nsIDocShellHistory nsIDocShellLoadInfo
  syn keyword moz_component  nsIDocShellTreeItem nsIDocShellTreeNode nsIDocShellTreeOwner nsIDocument
  syn keyword moz_component  nsIDocumentCharsetInfo nsIDocumentEncoder nsIDocumentEncoderNodeFixup
  syn keyword moz_component  nsIDocumentLoader nsIDocumentLoaderFactory nsIDocumentObserver
  syn keyword moz_component  nsIDocumentStateListener nsIDocumentTransformer nsIDocumentViewer
  syn keyword moz_component  nsIDocumentViewerPrint nsIDownload nsIDownloader nsIDownloadHistory
  syn keyword moz_component  nsIDownloadManager nsIDownloadManagerUI nsIDownloadObserver
  syn keyword moz_component  nsIDownloadProgressListener nsIDragService nsIDragSession nsIDragSessionGTK
  syn keyword moz_component  nsIDragSessionOS2 nsIDroppedLinkHandler nsIDTD nsIDynamicContainer nsIEcho
  syn keyword moz_component  nsIEditActionListener nsIEditingSession nsIEditor nsIEditorBoxObject
  syn keyword moz_component  nsIEditorDocShell nsIEditorIMESupport nsIEditorLogging nsIEditorMailSupport
  syn keyword moz_component  nsIEditorObserver nsIEditorSpellCheck nsIEditorStyleSheets nsIEditorSupport
  syn keyword moz_component  nsIEditRules nsIEffectiveTLDService nsIElementObserver nsIEmbeddingSiteWindow
  syn keyword moz_component  nsIEmbeddingSiteWindow2 nsIEncodedChannel nsIEntityConverter nsIEntropyCollector
  syn keyword moz_component  nsIEnumerator nsIEnvironment nsIEProfileMigrator nsIErrorService
  syn keyword moz_component  nsIEventListenerInfo nsIEventListenerService nsIEventQueue nsIEventSource
  syn keyword moz_component  nsIEventTarget nsIException nsIExceptionManager nsIExceptionProvider
  syn keyword moz_component  nsIExceptionService nsIExpatSink nsIExtendedExpatSink
  syn keyword moz_component  nsIExternalHelperAppService nsIExternalProtocolHandler
  syn keyword moz_component  nsIExternalProtocolService nsIExternalSharingAppService
  syn keyword moz_component  nsIExternalURLHandlerService nsIFactory nsIFaviconDataCallback nsIFaviconService
  syn keyword moz_component  nsIFeed nsIFeedContainer nsIFeedElementBase nsIFeedEntry nsIFeedGenerator
  syn keyword moz_component  nsIFeedPerson nsIFeedProcessor nsIFeedProgressListener nsIFeedResult
  syn keyword moz_component  nsIFeedResultListener nsIFeedResultService nsIFeedTextConstruct nsIFeedWriter
  syn keyword moz_component  nsIFile nsIFileChannel nsIFileInputStream nsIFileOutputStream nsIFilePicker
  syn keyword moz_component  nsIFileProtocolHandler nsIFileURL nsIFileView nsIFind nsIFindService
  syn keyword moz_component  nsIFlavorDataProvider nsIFocusManager nsIFontEnumerator nsIForm
  syn keyword moz_component  nsIFormatConverter nsIFormAutoComplete nsIFormControl nsIFormControlFrame
  syn keyword moz_component  nsIFormFillController nsIFormHistory2 nsIFormProcessor nsIFormSigningDialog
  syn keyword moz_component  nsIFormSubmitObserver nsIForwardIterator nsIFragmentContentSink nsIFrame
  syn keyword moz_component  nsIFrameEnumerator nsIFrameLoader nsIFrameLoaderOwner nsIFrameMessageListener
  syn keyword moz_component  nsIFrameMessageManager nsIFrameTraversal nsIFrameUtil nsIFTPChannel
  syn keyword moz_component  nsIFTPEventSink nsIGConfService nsIGeneratingKeypairInfoDialogs
  syn keyword moz_component  nsIGeolocationPrompt nsIGeolocationProvider nsIGeolocationUpdate nsIGfxInfo
  syn keyword moz_component  nsIGfxInfoDebug nsIGIOMimeApp nsIGIOService nsIGlobalHistory nsIGlobalHistory2
  syn keyword moz_component  nsIGlobalHistory3 nsIGnomeVFSMimeApp nsIGnomeVFSService nsIGridPart
  syn keyword moz_component  nsIGSettingsCollection nsIGSettingsService nsIGtkQtIconsConverter nsIHandlerApp
  syn keyword moz_component  nsIHandlerInfo nsIHandlerService nsIHapticFeedback nsIHashable
  syn keyword moz_component  nsIHelperAppLauncher nsIHelperAppLauncherDialog nsIHistoryEntry
  syn keyword moz_component  nsIHTMLAbsPosEditor nsIHTMLCollection nsIHTMLContentSink nsIHTMLDocument
  syn keyword moz_component  nsIHTMLEditor nsIHTMLFragmentContentSink nsIHTMLInlineTableEditor
  syn keyword moz_component  nsIHTMLObjectResizeListener nsIHTMLObjectResizer nsIHTMLToTextSink
  syn keyword moz_component  nsIHttpActivityDistributor nsIHttpActivityObserver nsIHttpAuthenticableChannel
  syn keyword moz_component  nsIHttpAuthenticator nsIHttpAuthManager nsIHttpChannel
  syn keyword moz_component  nsIHttpChannelAuthProvider nsIHttpChannelChild nsIHttpChannelInternal
  syn keyword moz_component  nsIHttpEventSink nsIHTTPHeaderListener nsIHttpHeaderVisitor nsIHTTPIndex
  syn keyword moz_component  nsIHttpProtocolHandler nsIHttpRequest nsIHttpRequestHandler nsIHttpResponse
  syn keyword moz_component  nsIHttpServer nsIHttpServerIdentity nsIHttpServerStoppedCallback
  syn keyword moz_component  nsIHttpUpgradeListener nsIIDBCursor nsIIDBCursorWithValue nsIIDBDatabase
  syn keyword moz_component  nsIIDBDatabaseException nsIIDBFactory nsIIDBIndex nsIIDBKeyRange
  syn keyword moz_component  nsIIDBObjectStore nsIIDBRequest nsIIDBTransaction nsIIDBVersionChangeEvent
  syn keyword moz_component  nsIIDBVersionChangeRequest nsIIdentityInfo nsIIdleService nsIIDNService
  syn keyword moz_component  nsIIFrameBoxObject nsIImageDocument nsIImageLoadingContent nsIImageToPixbuf
  syn keyword moz_component  nsIIMEPicker nsIIncrementalDownload nsIIndexedDatabaseManager
  syn keyword moz_component  nsIIndexedDatabaseUsageCallback nsIINIParser nsIINIParserFactory
  syn keyword moz_component  nsIINIParserWriter nsIInlineSpellChecker nsIInProcessContentFrameMessageManager
  syn keyword moz_component  nsIInputIterator nsIInputListAutoComplete nsIInputStream nsIInputStreamCallback
  syn keyword moz_component  nsIInputStreamChannel nsIInputStreamPump nsIInputStreamTee nsIInterfaceInfo
  syn keyword moz_component  nsIInterfaceInfoManager nsIInterfaceInfoSuperManager nsIInterfaceRequestor
  syn keyword moz_component  nsIIOService nsIIOService2 nsIIOUtil nsIIPCSerializable nsIJARChannel
  syn keyword moz_component  nsIJARProtocolHandler nsIJARURI nsIJetpack nsIJetpackService nsIJSArgArray
  syn keyword moz_component  nsIJSCID nsIJSContextStack nsIJSContextStackIterator nsIJSEventListener nsIJSID
  syn keyword moz_component  nsIJSIID nsIJSNativeInitializer nsIJSON nsIJSRuntimeService nsIJSXMLHttpRequest
  syn keyword moz_component  nsIJumpListBuilder nsIJumpListItem nsIJumpListLink nsIJumpListSeparator
  syn keyword moz_component  nsIJumpListShortcut nsIKeygenThread nsIKeyObject nsIKeyObjectFactory
  syn keyword moz_component  nsILanguageAtomService nsILayoutDebugger nsILayoutDebuggingTools
  syn keyword moz_component  nsILayoutHistoryState nsILayoutRegressionTester nsILDAPSyncQuery nsILDAPURL
  syn keyword moz_component  nsILineBreaker nsILineBreakSink nsILineInputStream nsILineIterator nsILink
  syn keyword moz_component  nsILinkHandler nsIListBoxObject nsIListControlFrame nsILivemarkService
  syn keyword moz_component  nsILoadContext nsILoadGroup nsILocale nsILocaleService nsILocalFile
  syn keyword moz_component  nsILocalFileMac nsILocalFileOS2 nsILocalFileWin nsILocalHandlerApp nsILocalStore
  syn keyword moz_component  nsILoggingSink nsILoginInfo nsILoginManager nsILoginManagerCrypto
  syn keyword moz_component  nsILoginManagerIEMigrationHelper nsILoginManagerPrompter nsILoginManagerStorage
  syn keyword moz_component  nsILoginMetaInfo nsILookAndFeel nsIMacDockSupport nsIMacShellService nsIMacUtils
  syn keyword moz_component  nsIMarkupDocumentViewer nsIMathMLFrame
  syn keyword moz_component  nsIMdbBlob nsIMdbCell nsIMdbCollection nsIMdbCompare nsIMdbCPlusHeap
  syn keyword moz_component  nsIMdbCursor nsIMdbEnv nsIMdbErrorHook nsIMdbFactory nsIMdbFactoryService
  syn keyword moz_component  nsIMdbFile nsIMdbHeap nsIMdbObject nsIMdbPort nsIMdbPortTableCursor nsIMdbRow
  syn keyword moz_component  nsIMdbRowCellCursor nsIMdbSorting nsIMdbStore nsIMdbTable nsIMdbTableRowCursor
  syn keyword moz_component  nsIMdbThumb nsIMEContext nsIMemory nsIMemoryMultiReporter
  syn keyword moz_component  nsIMemoryMultiReporterCallback nsIMemoryReporter nsIMemoryReporterManager
  syn keyword moz_component  nsIMenuBoxObject nsIMenuItem nsIMenuRollup nsIMEPicker nsIMessageWakeupService
  syn keyword moz_component  nsIMEStateManager nsIMIMEHeaderParam nsIMIMEInfo nsIMIMEInputStream
  syn keyword moz_component  nsIMIMEService nsIMM32Handler nsIModule nsIMozIconURI nsIMozWebSocket
  syn keyword moz_component  nsIMultiPartChannel nsIMultiplexInputStream nsIMutable nsIMutableArray
  syn keyword moz_component  nsIMutationObserver nsIMutationObserver2 nsINameSpaceManager nsINativeAppSupport
  syn keyword moz_component  nsINativeKeyBindings nsINativeMenuService nsINativeTreeSelection
  syn keyword moz_component  nsINativeTreeView nsINavBookmarkObserver nsINavBookmarksService
  syn keyword moz_component  nsINavHistoryBatchCallback nsINavHistoryContainerResultNode
  syn keyword moz_component  nsINavHistoryFullVisitResultNode nsINavHistoryObserver nsINavHistoryQuery
  syn keyword moz_component  nsINavHistoryQueryOptions nsINavHistoryQueryResultNode nsINavHistoryResult
  syn keyword moz_component  nsINavHistoryResultNode nsINavHistoryResultObserver
  syn keyword moz_component  nsINavHistoryResultTreeViewer nsINavHistoryService nsINavHistoryVisitResultNode
  syn keyword moz_component  nsINestedURI nsINetUtil nsINetworkLinkService nsINIParser
  syn keyword moz_component  nsINIParserFactory nsINode nsINodeInfo nsINodeList
  syn keyword moz_component  nsINotificationsList nsINPAPIPluginStreamInfo
  syn keyword moz_component  nsINSSCertCache nsINSSComponent nsINSSErrorsService nsIObjectFrame
  syn keyword moz_component  nsIObjectInputStream nsIObjectLoadingContent nsIObjectOutputStream nsIObserver
  syn keyword moz_component  nsIObserverEntry nsIObserverService nsIOCSPResponder nsIOfflineCacheUpdate
  syn keyword moz_component  nsIOfflineCacheUpdateObserver nsIOfflineCacheUpdateService nsIOS2Locale
  syn keyword moz_component  nsIOService nsIOSurface nsIOUtil nsIOutputIterator nsIOutputStream
  syn keyword moz_component  nsIOutputStreamCallback nsIPageSequenceFrame nsIParanoidFragmentContentSink
  syn keyword moz_component  nsIParentalControlsService nsIParentChannel nsIParentRedirectingChannel
  syn keyword moz_component  nsIParser nsIParserFilter nsIParserNode nsIParserService
  syn keyword moz_component  nsIPartialFileInputStream nsIPercentHeightObserver nsIPermission
  syn keyword moz_component  nsIPermissionManager nsIPersistentProperties nsIPhoneSupport nsIPhonetic nsIPipe
  syn keyword moz_component  nsIPK11Token nsIPK11TokenDB nsIPKCS11 nsIPKCS11Module nsIPKCS11ModuleDB
  syn keyword moz_component  nsIPKCS11Slot nsIPKIParamBlock nsIPlacesImportExportService nsIPlaintextEditor
  syn keyword moz_component  nsIPlatformCharset nsIPluginDocument nsIPluginHost nsIPluginInputStream
  syn keyword moz_component  nsIPluginInstanceOwner nsIPluginStreamInfo nsIPluginStreamListener nsIPluginTag
  syn keyword moz_component  nsIPluginTagInfo nsIPopupBoxObject nsIPopupWindowManager nsIPrefBranch
  syn keyword moz_component  nsIPrefBranch2 nsIPrefBranchInternal nsIPrefetchService nsIPrefLocalizedString
  syn keyword moz_component  nsIPrefService nsIPrefServiceInternal nsIPresShell nsIPresShell_base
  syn keyword moz_component  nsIPrincipal nsIPrintDialogService nsIPrinterEnumerator nsIPrintingPrompt
  syn keyword moz_component  nsIPrintingPromptService nsIPrintOptions nsIPrintPreviewNavigation
  syn keyword moz_component  nsIPrintProgress nsIPrintProgressParams nsIPrintSession nsIPrintSettings
  syn keyword moz_component  nsIPrintSettingsService nsIPrintSettingsWin nsIPrintStatusFeedback
  syn keyword moz_component  nsIPrivateBrowsingService nsIPrivateDOMEvent nsIPrivateDOMImplementation
  syn keyword moz_component  nsIPrivateTextEvent nsIPrivateTextRange nsIPrivateTextRangeList nsIProcess
  syn keyword moz_component  nsIProfile nsIProfileChangeStatus nsIProfileLock nsIProfileMigrator
  syn keyword moz_component  nsIProfileStartup nsIProfileUnlocker nsIProgrammingLanguage nsIProgressEventSink
  syn keyword moz_component  nsIPrompt nsIPromptFactory nsIPromptService nsIPromptService2 nsIProperties
  syn keyword moz_component  nsIProperty nsIPropertyBag nsIPropertyBag2 nsIPropertyElement
  syn keyword moz_component  nsIProtectedAuthThread nsIProtocolHandler nsIProtocolProxyCallback
  syn keyword moz_component  nsIProtocolProxyFilter nsIProtocolProxyService nsIProtocolProxyService2
  syn keyword moz_component  nsIProxiedChannel nsIProxiedProtocolHandler nsIProxyAutoConfig nsIProxyInfo
  syn keyword moz_component  nsIProxyObjectManager nsIPSMComponent nsIQueryContentEventResult
  syn keyword moz_component  nsIRadioGroupContainer nsIRadioGroupVisitor nsIRadioVisitor
  syn keyword moz_component  nsIRandomAccessIterator nsIRandomGenerator nsIRange nsIRangeUtils nsIRDFBlob
  syn keyword moz_component  nsIRDFCompositeDataSource nsIRDFContainer nsIRDFContainerUtils nsIRDFContentSink
  syn keyword moz_component  nsIRDFDataSource nsIRDFDate nsIRDFDelegateFactory nsIRDFFTPDataSource
  syn keyword moz_component  nsIRDFFTPDataSourceCallback nsIRDFInferDataSource nsIRDFInMemoryDataSource
  syn keyword moz_component  nsIRDFInt nsIRDFLiteral nsIRDFNode nsIRDFObserver nsIRDFPropagatableDataSource
  syn keyword moz_component  nsIRDFPurgeableDataSource nsIRDFRemoteDataSource nsIRDFResource nsIRDFService
  syn keyword moz_component  nsIRDFXMLParser nsIRDFXMLSerializer nsIRDFXMLSink nsIRDFXMLSinkObserver
  syn keyword moz_component  nsIRDFXMLSource nsIReadConfig nsIRecentBadCertsService nsIRecyclingAllocator
  syn keyword moz_component  nsIRedirectChannelRegistrar nsIRedirectResultListener nsIReflowCallback
  syn keyword moz_component  nsIRefreshURI nsIRelativeFilePref nsIRemoteService nsIRequest nsIRequestObserver
  syn keyword moz_component  nsIRequestObserverProxy nsIResProtocolHandler nsIResumableChannel
  syn keyword moz_component  nsIRollupListener nsIRootBox nsIRunnable nsIRwsService nsISafeOutputStream
  syn keyword moz_component  nsISample nsISaveAsCharset nsISAXAttributes nsISAXContentHandler
  syn keyword moz_component  nsISAXDTDHandler nsISAXEntityResolver nsISAXErrorHandler nsISAXLexicalHandler
  syn keyword moz_component  nsISAXLocator nsISAXMutableAttributes nsISAXXMLFilter nsISAXXMLReader nsIScreen
  syn keyword moz_component  nsIScreenManager nsIScreen_MOZILLA_2_0_BRANCH nsIScriptableBase64Encoder
  syn keyword moz_component  nsIScriptableDateFormat nsIScriptableInputStream nsIScriptableInterfaces
  syn keyword moz_component  nsIScriptableInterfacesByID nsIScriptableRegion nsIScriptableUnescapeHTML
  syn keyword moz_component  nsIScriptableUnicodeConverter nsIScriptChannel nsIScriptContext
  syn keyword moz_component  nsIScriptContextPrincipal nsIScriptElement nsIScriptError nsIScriptError2
  syn keyword moz_component  nsIScriptEventHandlerOwner nsIScriptExternalNameSet nsIScriptGlobalObject
  syn keyword moz_component  nsIScriptGlobalObjectOwner nsIScriptLoaderObserver nsIScriptObjectOwner
  syn keyword moz_component  nsIScriptObjectPrincipal nsIScriptRuntime nsIScriptSecurityManager
  syn keyword moz_component  nsIScriptTimeoutHandler nsIScrollable nsIScrollableFrame nsIScrollableView
  syn keyword moz_component  nsIScrollbarMediator nsIScrollBoxObject nsIScrollFrameInternal
  syn keyword moz_component  nsIScrollPositionListener nsISearchableInputStream nsISearchEngine
  syn keyword moz_component  nsISearchSubmission nsISecretDecoderRing nsISecretDecoderRingConfig
  syn keyword moz_component  nsISecureBrowserUI nsISecurityCheckedComponent nsISecurityEventSink
  syn keyword moz_component  nsISecurityInfoProvider nsISecurityWarningDialogs nsISeekableStream
  syn keyword moz_component  nsISelectControlFrame nsISelection nsISelection2 nsISelection3
  syn keyword moz_component  nsISelectionController nsISelectionDisplay nsISelectionListener
  syn keyword moz_component  nsISelectionPrivate nsISemanticUnitScanner nsISerializable
  syn keyword moz_component  nsISerializationHelper nsIServerSocket nsIServerSocketListener nsIServiceManager
  syn keyword moz_component  nsISessionStartup nsISessionStore nsISharingHandlerApp nsISHContainer
  syn keyword moz_component  nsIShellService nsISHEntry nsISHEntryInternal nsISHistory nsISHistoryInternal
  syn keyword moz_component  nsISHistoryListener nsISHTransaction nsISidebar nsISidebarExternal
  syn keyword moz_component  nsISignatureVerifier nsISimpleEnumerator nsISimpleStreamListener nsISimpleTest
  syn keyword moz_component  nsISimpleUnicharStreamFactory nsISliderListener nsISMILAnimationElement
  syn keyword moz_component  nsISMILAttr nsISMILType nsISMimeCert nsISMimeVerificationListener
  syn keyword moz_component  nsISO2022CNToUnicode nsISO2022JPToUnicodeV2 nsISO2022KRToUnicode
  syn keyword moz_component  nsISocketProvider nsISocketProviderService nsISocketTransport
  syn keyword moz_component  nsISocketTransportService nsISOCKSSocketInfo nsISound nsISpellChecker
  syn keyword moz_component  nsISSLCertErrorDialog nsISSLErrorListener nsISSLSocketControl nsISSLStatus
  syn keyword moz_component  nsISSLStatusProvider nsIStackFrame nsIStandaloneNativeMenu nsIStandardURL
  syn keyword moz_component  nsIStartupCache nsIStatefulFrame nsIStorageStream nsIStreamBufferAccess
  syn keyword moz_component  nsIStreamCipher nsIStreamConverter nsIStreamConverterService nsIStreamListener
  syn keyword moz_component  nsIStreamListenerTee nsIStreamLoader nsIStreamLoaderObserver
  syn keyword moz_component  nsIStreamTransportService nsIStrictTransportSecurityService nsIStringBundle
  syn keyword moz_component  nsIStringBundleOverride nsIStringBundleService nsIStringCharsetDetector
  syn keyword moz_component  nsIStringEnumerator nsIStringInputStream nsIStructuredCloneContainer
  syn keyword moz_component  nsIStyleRule nsIStyleRuleProcessor nsIStyleSheet nsIStyleSheetLinkingElement
  syn keyword moz_component  nsIStyleSheetService nsISupports nsISupportsArray nsISupportsChar
  syn keyword moz_component  nsISupportsCString nsISupportsDouble nsISupportsFloat nsISupportsHashKey
  syn keyword moz_component  nsISupportsID nsISupportsInterfacePointer nsISupportsPRBool nsISupportsPrimitive
  syn keyword moz_component  nsISupportsPRInt16 nsISupportsPRInt32 nsISupportsPRInt64 nsISupportsPriority
  syn keyword moz_component  nsISupportsPRTime nsISupportsPRUint16 nsISupportsPRUint32 nsISupportsPRUint64
  syn keyword moz_component  nsISupportsPRUint8 nsISupportsString nsISupportsVoid nsISupportsWeakReference
  syn keyword moz_component  nsISVGChildFrame nsISVGFilterProperty nsISVGGlyphFragmentNode nsISVGSVGFrame
  syn keyword moz_component  nsISVGValue nsISVGValueObserver nsISyncJPAKE nsISyncMessageSender
  syn keyword moz_component  nsISyncStreamListener nsISystemProxySettings nsITabChild nsITableCellLayout
  syn keyword moz_component  nsITableEditor nsITableLayout nsITableLayoutStrategy nsITabParent
  syn keyword moz_component  nsITaggingService nsITagHandler nsITaskbarPreview nsITaskbarPreviewButton
  syn keyword moz_component  nsITaskbarPreviewController nsITaskbarProgress nsITaskbarTabPreview
  syn keyword moz_component  nsITaskbarWindowPreview nsITelemetry nsITemplateRDFQuery nsITestProxy
  syn keyword moz_component  nsITestVariant nsITestXPCFoo nsITestXPCFoo2 nsITestXPCFunctionCallback
  syn keyword moz_component  nsITestXPCSomeUselessThing nsITextAttr nsITextControlElement nsITextControlFrame
  syn keyword moz_component  nsITextScroll nsITextService nsITextServicesDocument nsITextServicesFilter
  syn keyword moz_component  nsITextToSubURI nsITheme nsIThread nsIThreadEventFilter nsIThreadInternal
  syn keyword moz_component  nsIThreadJSContextStack nsIThreadManager nsIThreadObserver nsIThreadPool
  syn keyword moz_component  nsIThreadPoolListener nsITimedChannel nsITimer nsITimerCallback nsITokenDialogs
  syn keyword moz_component  nsITokenizer nsITokenPasswordDialogs nsIToolkit nsIToolkitChromeRegistry
  syn keyword moz_component  nsIToolkitProfile nsIToolkitProfileService nsITooltipListener
  syn keyword moz_component  nsITooltipTextProvider nsITraceableChannel nsITraceRefcnt nsITransaction
  syn keyword moz_component  nsITransactionList nsITransactionListener nsITransactionManager nsITransfer
  syn keyword moz_component  nsITransferable nsITransformObserver nsITransport nsITransportEventSink
  syn keyword moz_component  nsITransportSecurityInfo nsITreeBoxObject nsITreeColumn nsITreeColumns
  syn keyword moz_component  nsITreeContentView nsITreeImageListener nsITreeSelection nsITreeView
  syn keyword moz_component  nsITXTToHTMLConv nsITypeAheadFind nsIUGenCategory nsIUGenDetailCategory
  syn keyword moz_component  nsIUnicharBuffer nsIUnicharEncoder nsIUnicharInputStream
  syn keyword moz_component  nsIUnicharLineInputStream nsIUnicharOutputStream nsIUnicharStreamLoader
  syn keyword moz_component  nsIUnicharStreamLoaderObserver nsIUnicodeDecoder nsIUnicodeEncoder
  syn keyword moz_component  nsIUnicodeNormalizer nsIUpdate nsIUpdateChecker nsIUpdateCheckListener
  syn keyword moz_component  nsIUpdateManager nsIUpdatePatch nsIUpdatePrompt nsIUpdateTimerManager
  syn keyword moz_component  nsIUploadChannel nsIUploadChannel2 nsIURI nsIURIChecker nsIURIClassifier
  syn keyword moz_component  nsIURIClassifierCallback nsIURIContentListener nsIURIFixup nsIURILoader
  syn keyword moz_component  nsIURIRefObject nsIURIWithPrincipal nsIURL nsIUrlClassifierCallback
  syn keyword moz_component  nsIUrlClassifierDBService nsIUrlClassifierDBServiceWorker
  syn keyword moz_component  nsIUrlClassifierHashCompleter nsIUrlClassifierHashCompleterCallback
  syn keyword moz_component  nsIUrlClassifierLookupCallback nsIUrlClassifierStreamUpdater
  syn keyword moz_component  nsIUrlClassifierTable nsIUrlClassifierUpdateObserver nsIUrlClassifierUtils
  syn keyword moz_component  nsIURLFormatter nsIUrlListManager nsIUrlListManagerCallback nsIURLParser
  syn keyword moz_component  nsIUserCertPicker nsIUserInfo nsIUTF8ConverterService nsIUTF8StringEnumerator
  syn keyword moz_component  nsIUUIDGenerator nsIVariant nsIVersionComparator nsIView nsIViewManager
  syn keyword moz_component  nsIViewObserver nsIViewSourceChannel nsIWeakReference nsIWebappsSupport
  syn keyword moz_component  nsIWebBrowser nsIWebBrowserChrome nsIWebBrowserChrome2 nsIWebBrowserChrome3
  syn keyword moz_component  nsIWebBrowserChromeFocus nsIWebBrowserFind nsIWebBrowserFindInFrames
  syn keyword moz_component  nsIWebBrowserFocus nsIWebBrowserPersist nsIWebBrowserPrint nsIWebBrowserSetup
  syn keyword moz_component  nsIWebBrowserStream nsIWebContentConverterService nsIWebContentHandlerInfo
  syn keyword moz_component  nsIWebContentHandlerRegistrar nsIWebGLActiveInfo nsIWebGLBuffer
  syn keyword moz_component  nsIWebGLExtension nsIWebGLFramebuffer nsIWebGLProgram nsIWebGLRenderbuffer
  syn keyword moz_component  nsIWebGLShader nsIWebGLShaderArray nsIWebGLTexture nsIWebGLUniformLocation
  syn keyword moz_component  nsIWebHandlerApp nsIWebNavigation nsIWebNavigationInfo nsIWebPageDescriptor
  syn keyword moz_component  nsIWebProgress nsIWebProgressListener nsIWebProgressListener2
  syn keyword moz_component  nsIWebShellServices nsIWebSocketChannel nsIWebSocketListener nsIWidget
  syn keyword moz_component  nsIWifiAccessPoint nsIWifiListener nsIWifiMonitor nsIWinAccessNode
  syn keyword moz_component  nsIWinAppHelper nsIWindowCreator nsIWindowCreator2 nsIWindowDataSource
  syn keyword moz_component  nsIWindowMediator nsIWindowMediatorListener nsIWindowProvider nsIWindowsRegKey
  syn keyword moz_component  nsIWindowsShellService nsIWindowWatcher nsIWinTaskbar nsIWordBreaker
  syn keyword moz_component  nsIWrappedJSObjectTest nsIWritablePropertyBag nsIWritablePropertyBag2
  syn keyword moz_component  nsIWritableVariant nsIWyciwygChannel nsIX509Cert nsIX509Cert2 nsIX509Cert3
  syn keyword moz_component  nsIX509CertDB nsIX509CertDB2 nsIX509CertList nsIX509CertValidity
  syn keyword moz_component  nsIXBLAccessible nsIXBLDocumentInfo nsIXBLService nsIXHRSendable
  syn keyword moz_component  nsIXMLContentBuilder nsIXMLContentSink nsIXMLHttpRequest
  syn keyword moz_component  nsIXMLHttpRequestEventTarget nsIXMLHttpRequestUpload nsIXPathEvaluatorInternal
  syn keyword moz_component  nsIXPathResult nsIXPCComponents nsIXPCComponents_Classes
  syn keyword moz_component  nsIXPCComponents_ClassesByID nsIXPCComponents_Constructor
  syn keyword moz_component  nsIXPCComponents_Exception nsIXPCComponents_ID nsIXPCComponents_Results
  syn keyword moz_component  nsIXPCComponents_Utils nsIXPCComponents_utils_Sandbox nsIXPCConstructor
  syn keyword moz_component  nsIXPCException nsIXPCFunctionThisTranslator nsIXPConnect
  syn keyword moz_component  nsIXPConnectJSObjectHolder nsIXPConnectWrappedJS nsIXPConnectWrappedNative
  syn keyword moz_component  nsIXPCSample_ClassA nsIXPCSample_ClassB nsIXPCSample_ClassC
  syn keyword moz_component  nsIXPCSample_HookerUpper nsIXPCScriptable nsIXPCScriptNotify
  syn keyword moz_component  nsIXPCSecurityManager nsIXPCTestArray nsIXPCTestCallJS nsIXPCTestChild
  syn keyword moz_component  nsIXPCTestChild2 nsIXPCTestChild3 nsIXPCTestChild4 nsIXPCTestChild5
  syn keyword moz_component  nsIXPCTestConst nsIXPCTestDOMString nsIXPCTestIn nsIXPCTestInOut nsIXPCTestNoisy
  syn keyword moz_component  nsIXPCTestObjectReadOnly nsIXPCTestObjectReadWrite nsIXPCTestOther nsIXPCTestOut
  syn keyword moz_component  nsIXPCTestOverloaded nsIXPCTestParent nsIXPCTestParentOne nsIXPCTestParentTwo
  syn keyword moz_component  nsIXPCTestString nsIXPCWrappedJSClass nsIXPCWrappedJSObjectGetter
  syn keyword moz_component  nsIXPIDialogService nsIXPIInstallInfo nsIXPInstallManager nsIXPIProgressDialog
  syn keyword moz_component  nsIXPTCProxy nsIXPTCStubBase nsIXSLTException nsIXSLTProcessor
  syn keyword moz_component  nsIXSLTProcessorPrivate nsIXTFAttributeHandler nsIXTFElement
  syn keyword moz_component  nsIXTFElementFactory nsIXTFElementWrapper nsIXTFPrivate nsIXTFService
  syn keyword moz_component  nsIXULAppInfo nsIXULAppInstall nsIXULBrowserWindow nsIXULBuilderListener
  syn keyword moz_component  nsIXULChromeRegistry nsIXULDocument nsIXULOverlayProvider nsIXULPrototypeCache
  syn keyword moz_component  nsIXULPrototypeScript nsIXULRuntime nsIXULSortService nsIXULTemplateBuilder
  syn keyword moz_component  nsIXULTemplateQueryProcessor nsIXULTemplateResult nsIXULTemplateRuleFilter
  syn keyword moz_component  nsIXULTreeBuilder nsIXULTreeBuilderObserver nsIXULWindow nsIZipEntry
  syn keyword moz_component  nsIZipReader nsIZipReaderCache nsIZipWriter

" # Mozilla Components: External DOM API
" find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^\(class\|interface\)\s*nsI" '{}' \;
"   | sed 's/\(:\|;\|,\|{\).*$//' | sed 's/^.*nsI/nsI/' | sed 's/\s*$//'                 \
"   | sort -u | grep nsIDOM
  syn keyword moz_dom        nsIDOMAnimationEvent nsIDOMAttr nsIDOMBarProp nsIDOMBeforeUnloadEvent nsIDOMBlob
  syn keyword moz_dom        nsIDOMCanvasGradient nsIDOMCanvasPattern nsIDOMCanvasRenderingContext2D
  syn keyword moz_dom        nsIDOMCDATASection nsIDOMCharacterData nsIDOMChromeWindow nsIDOMCIExtension
  syn keyword moz_dom        nsIDOMClientInformation nsIDOMClientRect nsIDOMClientRectList nsIDOMCloseEvent
  syn keyword moz_dom        nsIDOMCommandEvent nsIDOMComment nsIDOMCompositionListener
  syn keyword moz_dom        nsIDOMContextMenuListener nsIDOMCounter nsIDOMCRMFObject nsIDOMCrypto
  syn keyword moz_dom        nsIDOMCryptoDialogs nsIDOMCSS2Properties nsIDOMCSSCharsetRule
  syn keyword moz_dom        nsIDOMCSSFontFaceRule nsIDOMCSSImportRule nsIDOMCSSMediaRule
  syn keyword moz_dom        nsIDOMCSSMozDocumentRule nsIDOMCSSPageRule nsIDOMCSSPrimitiveValue nsIDOMCSSRule
  syn keyword moz_dom        nsIDOMCSSRuleList nsIDOMCSSStyleDeclaration nsIDOMCSSStyleRule
  syn keyword moz_dom        nsIDOMCSSStyleRuleCollection nsIDOMCSSStyleSheet nsIDOMCSSUnknownRule
  syn keyword moz_dom        nsIDOMCSSValue nsIDOMCSSValueList nsIDOMCustomEvent nsIDOMDataContainerEvent
  syn keyword moz_dom        nsIDOMDataTransfer nsIDOMDesktopNotification nsIDOMDesktopNotificationCenter
  syn keyword moz_dom        nsIDOMDeviceAcceleration nsIDOMDeviceMotionEvent nsIDOMDeviceOrientationEvent
  syn keyword moz_dom        nsIDOMDeviceRotationRate nsIDOMDocument nsIDOMDocumentCSS nsIDOMDocumentFragment
  syn keyword moz_dom        nsIDOMDocumentTouch nsIDOMDocumentTraversal nsIDOMDocumentType nsIDOMDocumentXBL
  syn keyword moz_dom        nsIDOMDOMConstructor nsIDOMDOMError nsIDOMDOMErrorHandler nsIDOMDOMException
  syn keyword moz_dom        nsIDOMDOMImplementation nsIDOMDOMLocator nsIDOMDOMSettableTokenList
  syn keyword moz_dom        nsIDOMDOMStringList nsIDOMDOMStringMap nsIDOMDOMTokenList nsIDOMDragEvent
  syn keyword moz_dom        nsIDOMElement nsIDOMElementCSSInlineStyle nsIDOMElementTimeControl nsIDOMEvent
  syn keyword moz_dom        nsIDOMEventException nsIDOMEventListener nsIDOMEventTarget nsIDOMFile
  syn keyword moz_dom        nsIDOMFileError nsIDOMFileException nsIDOMFileList nsIDOMFileReader
  syn keyword moz_dom        nsIDOMFocusListener nsIDOMFontFace nsIDOMFontFaceList nsIDOMFormData
  syn keyword moz_dom        nsIDOMFormListener nsIDOMGCParticipant nsIDOMGeoGeolocation nsIDOMGeoPosition
  syn keyword moz_dom        nsIDOMGeoPositionAddress nsIDOMGeoPositionCallback nsIDOMGeoPositionCoords
  syn keyword moz_dom        nsIDOMGeoPositionError nsIDOMGeoPositionErrorCallback nsIDOMGeoPositionOptions
  syn keyword moz_dom        nsIDOMGetSVGDocument nsIDOMGlobalPropertyInitializer nsIDOMHashChangeEvent
  syn keyword moz_dom        nsIDOMHistory nsIDOMHTMLAnchorElement nsIDOMHTMLAppletElement
  syn keyword moz_dom        nsIDOMHTMLAreaElement nsIDOMHTMLAudioElement nsIDOMHTMLBaseElement
  syn keyword moz_dom        nsIDOMHTMLBodyElement nsIDOMHTMLBRElement nsIDOMHTMLButtonElement
  syn keyword moz_dom        nsIDOMHTMLByteRanges nsIDOMHTMLCanvasElement nsIDOMHTMLCollection
  syn keyword moz_dom        nsIDOMHTMLDataListElement nsIDOMHTMLDirectoryElement nsIDOMHTMLDivElement
  syn keyword moz_dom        nsIDOMHTMLDListElement nsIDOMHTMLDocument nsIDOMHTMLElement
  syn keyword moz_dom        nsIDOMHTMLEmbedElement nsIDOMHTMLFieldSetElement nsIDOMHTMLFontElement
  syn keyword moz_dom        nsIDOMHTMLFormElement nsIDOMHTMLFrameElement nsIDOMHTMLFrameSetElement
  syn keyword moz_dom        nsIDOMHTMLHeadElement nsIDOMHTMLHeadingElement nsIDOMHTMLHRElement
  syn keyword moz_dom        nsIDOMHTMLHtmlElement nsIDOMHTMLIFrameElement nsIDOMHTMLImageElement
  syn keyword moz_dom        nsIDOMHTMLInputElement nsIDOMHTMLLabelElement nsIDOMHTMLLegendElement
  syn keyword moz_dom        nsIDOMHTMLLIElement nsIDOMHTMLLinkElement nsIDOMHTMLMapElement
  syn keyword moz_dom        nsIDOMHTMLMediaElement nsIDOMHTMLMenuElement nsIDOMHTMLMetaElement
  syn keyword moz_dom        nsIDOMHTMLModElement nsIDOMHTMLObjectElement nsIDOMHTMLOListElement
  syn keyword moz_dom        nsIDOMHTMLOptGroupElement nsIDOMHTMLOptionElement nsIDOMHTMLOptionsCollection
  syn keyword moz_dom        nsIDOMHTMLOutputElement nsIDOMHTMLParagraphElement nsIDOMHTMLParamElement
  syn keyword moz_dom        nsIDOMHTMLPreElement nsIDOMHTMLProgressElement nsIDOMHTMLQuoteElement
  syn keyword moz_dom        nsIDOMHTMLScriptElement nsIDOMHTMLSelectElement nsIDOMHTMLSourceElement
  syn keyword moz_dom        nsIDOMHTMLStyleElement nsIDOMHTMLTableCaptionElement nsIDOMHTMLTableCellElement
  syn keyword moz_dom        nsIDOMHTMLTableColElement nsIDOMHTMLTableElement nsIDOMHTMLTableRowElement
  syn keyword moz_dom        nsIDOMHTMLTableSectionElement nsIDOMHTMLTextAreaElement nsIDOMHTMLTitleElement
  syn keyword moz_dom        nsIDOMHTMLUListElement nsIDOMHTMLUnknownElement nsIDOMHTMLVideoElement
  syn keyword moz_dom        nsIDOMInstallTriggerGlobal nsIDOMJSWindow nsIDOMKeyEvent nsIDOMKeyListener
  syn keyword moz_dom        nsIDOMLinkStyle nsIDOMLoadListener nsIDOMLoadStatus nsIDOMLocation nsIDOMLSInput
  syn keyword moz_dom        nsIDOMLSProgressEvent nsIDOMMediaError nsIDOMMediaList nsIDOMMediaQueryList
  syn keyword moz_dom        nsIDOMMediaQueryListListener nsIDOMMessageEvent nsIDOMMimeType
  syn keyword moz_dom        nsIDOMMimeTypeArray nsIDOMModalContentWindow nsIDOMMouseEvent
  syn keyword moz_dom        nsIDOMMouseEventListener nsIDOMMouseListener nsIDOMMouseMotionListener
  syn keyword moz_dom        nsIDOMMouseScrollEvent nsIDOMMozBlobBuilder nsIDOMMozCSSKeyframeRule
  syn keyword moz_dom        nsIDOMMozCSSKeyframesRule nsIDOMMozTouchEvent nsIDOMMozURLProperty
  syn keyword moz_dom        nsIDOMMutationEvent nsIDOMNamedNodeMap nsIDOMNameList nsIDOMNavigator
  syn keyword moz_dom        nsIDOMNavigatorDesktopNotification nsIDOMNavigatorGeolocation nsIDOMNode
  syn keyword moz_dom        nsIDOMNodeFilter nsIDOMNodeIterator nsIDOMNodeList nsIDOMNodeSelector
  syn keyword moz_dom        nsIDOMNotifyAudioAvailableEvent nsIDOMNotifyPaintEvent nsIDOMNSDataTransfer
  syn keyword moz_dom        nsIDOMNSEditableElement nsIDOMNSElement nsIDOMNSEvent nsIDOMNSHTMLElement
  syn keyword moz_dom        nsIDOMNSHTMLFrameElement nsIDOMNSHTMLOptionCollection nsIDOMNSMouseEvent
  syn keyword moz_dom        nsIDOMNSRange nsIDOMNSRGBAColor nsIDOMNSUIEvent nsIDOMNSXPathExpression
  syn keyword moz_dom        nsIDOMOfflineResourceList nsIDOMPageTransitionEvent nsIDOMPaintRequest
  syn keyword moz_dom        nsIDOMPaintRequestList nsIDOMParser nsIDOMParserJS nsIDOMPerformance
  syn keyword moz_dom        nsIDOMPerformanceNavigation nsIDOMPerformanceTiming nsIDOMPkcs11 nsIDOMPlugin
  syn keyword moz_dom        nsIDOMPluginArray nsIDOMPopStateEvent nsIDOMPopupBlockedEvent
  syn keyword moz_dom        nsIDOMProcessingInstruction nsIDOMProgressEvent nsIDOMRange nsIDOMRangeException
  syn keyword moz_dom        nsIDOMRect nsIDOMRGBColor nsIDOMScreen nsIDOMScriptObjectFactory
  syn keyword moz_dom        nsIDOMScrollAreaEvent nsIDOMSerializer nsIDOMSimpleGestureEvent
  syn keyword moz_dom        nsIDOMSmartCardEvent nsIDOMStorage nsIDOMStorageEvent nsIDOMStorageEventObsolete
  syn keyword moz_dom        nsIDOMStorageIndexedDB nsIDOMStorageItem nsIDOMStorageList nsIDOMStorageManager
  syn keyword moz_dom        nsIDOMStorageObsolete nsIDOMStyleSheet nsIDOMStyleSheetList nsIDOMSVGAElement
  syn keyword moz_dom        nsIDOMSVGAltGlyphElement nsIDOMSVGAngle nsIDOMSVGAnimatedAngle
  syn keyword moz_dom        nsIDOMSVGAnimatedBoolean nsIDOMSVGAnimatedEnumeration nsIDOMSVGAnimatedInteger
  syn keyword moz_dom        nsIDOMSVGAnimatedLength nsIDOMSVGAnimatedLengthList nsIDOMSVGAnimatedNumber
  syn keyword moz_dom        nsIDOMSVGAnimatedNumberList nsIDOMSVGAnimatedPathData nsIDOMSVGAnimatedPoints
  syn keyword moz_dom        nsIDOMSVGAnimatedPreserveAspectRatio nsIDOMSVGAnimatedRect
  syn keyword moz_dom        nsIDOMSVGAnimatedString nsIDOMSVGAnimatedTransformList nsIDOMSVGAnimateElement
  syn keyword moz_dom        nsIDOMSVGAnimateMotionElement nsIDOMSVGAnimateTransformElement
  syn keyword moz_dom        nsIDOMSVGAnimationElement nsIDOMSVGCircleElement nsIDOMSVGClipPathElement
  syn keyword moz_dom        nsIDOMSVGComponentTransferFunctionElement nsIDOMSVGDefsElement
  syn keyword moz_dom        nsIDOMSVGDescElement nsIDOMSVGDocument nsIDOMSVGElement nsIDOMSVGEllipseElement
  syn keyword moz_dom        nsIDOMSVGEvent nsIDOMSVGException nsIDOMSVGFEBlendElement
  syn keyword moz_dom        nsIDOMSVGFEColorMatrixElement nsIDOMSVGFEComponentTransferElement
  syn keyword moz_dom        nsIDOMSVGFECompositeElement nsIDOMSVGFEConvolveMatrixElement
  syn keyword moz_dom        nsIDOMSVGFEDiffuseLightingElement nsIDOMSVGFEDisplacementMapElement
  syn keyword moz_dom        nsIDOMSVGFEDistantLightElement nsIDOMSVGFEFloodElement nsIDOMSVGFEFuncAElement
  syn keyword moz_dom        nsIDOMSVGFEFuncBElement nsIDOMSVGFEFuncGElement nsIDOMSVGFEFuncRElement
  syn keyword moz_dom        nsIDOMSVGFEGaussianBlurElement nsIDOMSVGFEImageElement nsIDOMSVGFEMergeElement
  syn keyword moz_dom        nsIDOMSVGFEMergeNodeElement nsIDOMSVGFEMorphologyElement
  syn keyword moz_dom        nsIDOMSVGFEOffsetElement nsIDOMSVGFEPointLightElement
  syn keyword moz_dom        nsIDOMSVGFESpecularLightingElement nsIDOMSVGFESpotLightElement
  syn keyword moz_dom        nsIDOMSVGFETileElement nsIDOMSVGFETurbulenceElement nsIDOMSVGFilterElement
  syn keyword moz_dom        nsIDOMSVGFilterPrimitiveStandardAttributes nsIDOMSVGFitToViewBox
  syn keyword moz_dom        nsIDOMSVGForeignObjectElement nsIDOMSVGGElement nsIDOMSVGGradientElement
  syn keyword moz_dom        nsIDOMSVGImageElement nsIDOMSVGLength nsIDOMSVGLengthList
  syn keyword moz_dom        nsIDOMSVGLinearGradientElement nsIDOMSVGLineElement nsIDOMSVGLocatable
  syn keyword moz_dom        nsIDOMSVGMarkerElement nsIDOMSVGMaskElement nsIDOMSVGMatrix
  syn keyword moz_dom        nsIDOMSVGMetadataElement nsIDOMSVGMpathElement nsIDOMSVGNumber
  syn keyword moz_dom        nsIDOMSVGNumberList nsIDOMSVGPathElement nsIDOMSVGPathSeg nsIDOMSVGPathSegArcAbs
  syn keyword moz_dom        nsIDOMSVGPathSegArcRel nsIDOMSVGPathSegClosePath nsIDOMSVGPathSegCurvetoCubicAbs
  syn keyword moz_dom        nsIDOMSVGPathSegCurvetoCubicRel nsIDOMSVGPathSegCurvetoCubicSmoothAbs
  syn keyword moz_dom        nsIDOMSVGPathSegCurvetoCubicSmoothRel nsIDOMSVGPathSegCurvetoQuadraticAbs
  syn keyword moz_dom        nsIDOMSVGPathSegCurvetoQuadraticRel nsIDOMSVGPathSegCurvetoQuadraticSmoothAbs
  syn keyword moz_dom        nsIDOMSVGPathSegCurvetoQuadraticSmoothRel nsIDOMSVGPathSegLinetoAbs
  syn keyword moz_dom        nsIDOMSVGPathSegLinetoHorizontalAbs nsIDOMSVGPathSegLinetoHorizontalRel
  syn keyword moz_dom        nsIDOMSVGPathSegLinetoRel nsIDOMSVGPathSegLinetoVerticalAbs
  syn keyword moz_dom        nsIDOMSVGPathSegLinetoVerticalRel nsIDOMSVGPathSegList nsIDOMSVGPathSegMovetoAbs
  syn keyword moz_dom        nsIDOMSVGPathSegMovetoRel nsIDOMSVGPatternElement nsIDOMSVGPoint
  syn keyword moz_dom        nsIDOMSVGPointList nsIDOMSVGPolygonElement nsIDOMSVGPolylineElement
  syn keyword moz_dom        nsIDOMSVGPreserveAspectRatio nsIDOMSVGRadialGradientElement nsIDOMSVGRect
  syn keyword moz_dom        nsIDOMSVGRectElement nsIDOMSVGScriptElement nsIDOMSVGSetElement
  syn keyword moz_dom        nsIDOMSVGStopElement nsIDOMSVGStylable nsIDOMSVGStyleElement nsIDOMSVGSVGElement
  syn keyword moz_dom        nsIDOMSVGSwitchElement nsIDOMSVGSymbolElement nsIDOMSVGTextContentElement
  syn keyword moz_dom        nsIDOMSVGTextElement nsIDOMSVGTextPathElement nsIDOMSVGTextPositioningElement
  syn keyword moz_dom        nsIDOMSVGTitleElement nsIDOMSVGTransform nsIDOMSVGTransformable
  syn keyword moz_dom        nsIDOMSVGTransformList nsIDOMSVGTSpanElement nsIDOMSVGUnitTypes
  syn keyword moz_dom        nsIDOMSVGURIReference nsIDOMSVGUseElement nsIDOMSVGViewSpec nsIDOMSVGZoomAndPan
  syn keyword moz_dom        nsIDOMSVGZoomEvent nsIDOMText nsIDOMTextListener nsIDOMTextMetrics
  syn keyword moz_dom        nsIDOMTimeEvent nsIDOMTimeRanges nsIDOMToString nsIDOMTouch nsIDOMTouchEvent
  syn keyword moz_dom        nsIDOMTouchList nsIDOMTransitionEvent nsIDOMTreeWalker nsIDOMUIEvent
  syn keyword moz_dom        nsIDOMUIListener nsIDOMUserDataHandler nsIDOMValidityState
  syn keyword moz_dom        nsIDOMWebGLRenderingContext nsIDOMWindow nsIDOMWindowCollection
  syn keyword moz_dom        nsIDOMWindowPerformance nsIDOMWindowUtils nsIDOMXMLDocument nsIDOMXPathEvaluator
  syn keyword moz_dom        nsIDOMXPathException nsIDOMXPathExpression nsIDOMXPathNamespace
  syn keyword moz_dom        nsIDOMXPathNSResolver nsIDOMXPathResult nsIDOMXULButtonElement
  syn keyword moz_dom        nsIDOMXULCheckboxElement nsIDOMXULCommandDispatcher nsIDOMXULCommandEvent
  syn keyword moz_dom        nsIDOMXULContainerElement nsIDOMXULContainerItemElement nsIDOMXULControlElement
  syn keyword moz_dom        nsIDOMXULDescriptionElement nsIDOMXULDocument nsIDOMXULElement
  syn keyword moz_dom        nsIDOMXULImageElement nsIDOMXULLabeledControlElement nsIDOMXULLabelElement
  syn keyword moz_dom        nsIDOMXULMenuListElement nsIDOMXULMultiSelectControlElement
  syn keyword moz_dom        nsIDOMXULPopupElement nsIDOMXULRelatedElement nsIDOMXULSelectControlElement
  syn keyword moz_dom        nsIDOMXULSelectControlItemElement nsIDOMXULTextBoxElement nsIDOMXULTreeElement

" Mozilla Helpers
syn keyword moz_util         do_CreateInstance do_GetAtom do_GetService do_GetWeakReference do_QueryInterface do_QueryReferent
syn keyword moz_util         getter_AddRefs address_of
syn keyword moz_assert       NS_ASSERTION NS_ENSURE_SUCCESS NS_ENSURE_TRUE NS_ENSURE_STATE NS_ENSURE_ARG_POINTER
syn keyword moz_assert       NS_SUCCEEDED NS_FAILED NS_NOTREACHED NS_IF_RELEASE NS_IF_ADDREF NS_PRECONDITION
syn keyword moz_util         NS_NewAtom NS_NewRunnableMethod NS_NewISupportsArray NS_NewHTMLURIRefObject NS_NewURI
syn keyword moz_util         NS_LITERAL_STRING NS_NAMED_LITERAL_STRING NS_ADDREF NS_MIN NS_ABS
syn keyword moz_util         NS_EDITOR_ELEMENT_NOT_FOUND NS_DEFINE_CID

" # Mozilla NS_ERROR Macros
" find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_ERROR" '{}' \; \
"   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' | sed 's/(.*$//'           \
"   | sort -u
  syn keyword moz_util       NS_ERROR
  syn keyword moz_util       NS_ERROR_GENERATE NS_ERROR_GENERATE_FAILURE NS_ERROR_GENERATE_SUCCESS
  syn keyword moz_util       NS_ERROR_GET_CODE NS_ERROR_GET_MODULE NS_ERROR_GET_SEVERITY

" # Mozilla NS_ERROR Constants
" find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_ERROR" '{}' \; \
"   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' -v                         \
"   | sort -u
  syn keyword moz_error      NS_ERROR_ABORT NS_ERROR_ALREADY_CONNECTED NS_ERROR_ALREADY_INITIALIZED
  syn keyword moz_error      NS_ERROR_ALREADY_OPENED NS_ERROR_BASE NS_ERROR_CACHE_DATA_IS_NOT_STREAM
  syn keyword moz_error      NS_ERROR_CACHE_DATA_IS_STREAM NS_ERROR_CACHE_ENTRY_DOOMED NS_ERROR_CACHE_IN_USE
  syn keyword moz_error      NS_ERROR_CACHE_KEY_NOT_FOUND NS_ERROR_CACHE_READ_ACCESS_DENIED
  syn keyword moz_error      NS_ERROR_CACHE_WAIT_FOR_VALIDATION NS_ERROR_CACHE_WRITE_ACCESS_DENIED
  syn keyword moz_error      NS_ERROR_CANNOT_CONVERT_DATA NS_ERROR_CMS_ENCRYPT_INCOMPLETE
  syn keyword moz_error      NS_ERROR_CMS_ENCRYPT_NO_BULK_ALG NS_ERROR_CMS_VERIFY_BAD_DIGEST
  syn keyword moz_error      NS_ERROR_CMS_VERIFY_BAD_SIGNATURE NS_ERROR_CMS_VERIFY_CERT_WITHOUT_ADDRESS
  syn keyword moz_error      NS_ERROR_CMS_VERIFY_DIGEST_MISMATCH NS_ERROR_CMS_VERIFY_ERROR_PROCESSING
  syn keyword moz_error      NS_ERROR_CMS_VERIFY_ERROR_UNVERIFIED NS_ERROR_CMS_VERIFY_HEADER_MISMATCH
  syn keyword moz_error      NS_ERROR_CMS_VERIFY_MALFORMED_SIGNATURE NS_ERROR_CMS_VERIFY_NOCERT
  syn keyword moz_error      NS_ERROR_CMS_VERIFY_NO_CONTENT_INFO NS_ERROR_CMS_VERIFY_NOT_SIGNED
  syn keyword moz_error      NS_ERROR_CMS_VERIFY_NOT_YET_ATTEMPTED NS_ERROR_CMS_VERIFY_UNKNOWN_ALGO
  syn keyword moz_error      NS_ERROR_CMS_VERIFY_UNSUPPORTED_ALGO NS_ERROR_CMS_VERIFY_UNTRUSTED
  syn keyword moz_error      NS_ERROR_CONNECTION_REFUSED NS_ERROR_CONTENT_BLOCKED
  syn keyword moz_error      NS_ERROR_CONTENT_BLOCKED_SHOW_ALT NS_ERROR_CORRUPTED_CONTENT
  syn keyword moz_error      NS_ERROR_CSP_FRAME_ANCESTOR_VIOLATION NS_ERROR_DNS_LOOKUP_QUEUE_FULL
  syn keyword moz_error      NS_ERROR_DOCSHELL_REQUEST_REJECTED NS_ERROR_DOCUMENT_NOT_CACHED
  syn keyword moz_error      NS_ERROR_DOM_BAD_DOCUMENT_DOMAIN NS_ERROR_DOM_BAD_URI
  syn keyword moz_error      NS_ERROR_DOM_DATA_CLONE_ERR NS_ERROR_DOM_DOMSTRING_SIZE_ERR
  syn keyword moz_error      NS_ERROR_DOM_FILE_ABORT_ERR NS_ERROR_DOM_FILE_NOT_FOUND_ERR
  syn keyword moz_error      NS_ERROR_DOM_FILE_NOT_READABLE_ERR NS_ERROR_DOM_HIERARCHY_REQUEST_ERR
  syn keyword moz_error      NS_ERROR_DOM_INDEXEDDB_ABORT_ERR NS_ERROR_DOM_INDEXEDDB_CONSTRAINT_ERR
  syn keyword moz_error      NS_ERROR_DOM_INDEXEDDB_DATA_ERR NS_ERROR_DOM_INDEXEDDB_DEADLOCK_ERR
  syn keyword moz_error      NS_ERROR_DOM_INDEXEDDB_NON_TRANSIENT_ERR NS_ERROR_DOM_INDEXEDDB_NOT_ALLOWED_ERR
  syn keyword moz_error      NS_ERROR_DOM_INDEXEDDB_NOT_FOUND_ERR NS_ERROR_DOM_INDEXEDDB_READ_ONLY_ERR
  syn keyword moz_error      NS_ERROR_DOM_INDEXEDDB_RECOVERABLE_ERR NS_ERROR_DOM_INDEXEDDB_TIMEOUT_ERR
  syn keyword moz_error      NS_ERROR_DOM_INDEXEDDB_TRANSACTION_INACTIVE_ERR
  syn keyword moz_error      NS_ERROR_DOM_INDEXEDDB_TRANSIENT_ERR NS_ERROR_DOM_INDEXEDDB_UNKNOWN_ERR
  syn keyword moz_error      NS_ERROR_DOM_INDEX_SIZE_ERR NS_ERROR_DOM_INUSE_ATTRIBUTE_ERR
  syn keyword moz_error      NS_ERROR_DOM_INVALID_ACCESS_ERR NS_ERROR_DOM_INVALID_CHARACTER_ERR
  syn keyword moz_error      NS_ERROR_DOM_INVALID_EXPRESSION_ERR NS_ERROR_DOM_INVALID_MODIFICATION_ERR
  syn keyword moz_error      NS_ERROR_DOM_INVALID_STATE_ERR NS_ERROR_DOM_NAMESPACE_ERR
  syn keyword moz_error      NS_ERROR_DOM_NO_DATA_ALLOWED_ERR NS_ERROR_DOM_NO_MODIFICATION_ALLOWED_ERR
  syn keyword moz_error      NS_ERROR_DOM_NOT_BOOLEAN_ERR NS_ERROR_DOM_NOT_FOUND_ERR
  syn keyword moz_error      NS_ERROR_DOM_NOT_FUNCTION_ERR NS_ERROR_DOM_NOT_NUMBER_ERR
  syn keyword moz_error      NS_ERROR_DOM_NOT_OBJECT_ERR NS_ERROR_DOM_NOT_SUPPORTED_ERR
  syn keyword moz_error      NS_ERROR_DOM_NOT_XPC_OBJECT_ERR NS_ERROR_DOM_PROP_ACCESS_DENIED
  syn keyword moz_error      NS_ERROR_DOM_QUOTA_REACHED NS_ERROR_DOM_RANGE_BAD_BOUNDARYPOINTS_ERR
  syn keyword moz_error      NS_ERROR_DOM_RANGE_INVALID_NODE_TYPE_ERR NS_ERROR_DOM_RETVAL_UNDEFINED
  syn keyword moz_error      NS_ERROR_DOM_SECMAN_ERR NS_ERROR_DOM_SECURITY_ERR
  syn keyword moz_error      NS_ERROR_DOM_SVG_INVALID_VALUE_ERR NS_ERROR_DOM_SVG_MATRIX_NOT_INVERTABLE
  syn keyword moz_error      NS_ERROR_DOM_SVG_WRONG_TYPE_ERR NS_ERROR_DOM_SYNTAX_ERR
  syn keyword moz_error      NS_ERROR_DOM_TOO_FEW_PARAMETERS_ERR NS_ERROR_DOM_TYPE_ERR
  syn keyword moz_error      NS_ERROR_DOM_TYPE_MISMATCH_ERR NS_ERROR_DOM_UNSPECIFIED_EVENT_TYPE_ERR
  syn keyword moz_error      NS_ERROR_DOM_VALIDATION_ERR NS_ERROR_DOM_WRONG_DOCUMENT_ERR
  syn keyword moz_error      NS_ERROR_DOM_WRONG_TYPE_ERR NS_ERROR_DOM_XPCONNECT_ACCESS_DENIED
  syn keyword moz_error      NS_ERROR_ENTITY_CHANGED NS_ERROR_FACTORY_EXISTS
  syn keyword moz_error      NS_ERROR_FACTORY_NO_SIGNATURE_SUPPORT NS_ERROR_FACTORY_NOT_LOADED
  syn keyword moz_error      NS_ERROR_FACTORY_NOT_REGISTERED NS_ERROR_FACTORY_REGISTER_AGAIN NS_ERROR_FAILURE
  syn keyword moz_error      NS_ERROR_FILE_ACCESS_DENIED NS_ERROR_FILE_ALREADY_EXISTS
  syn keyword moz_error      NS_ERROR_FILE_COPY_OR_MOVE_FAILED NS_ERROR_FILE_CORRUPTED
  syn keyword moz_error      NS_ERROR_FILE_DESTINATION_NOT_DIR NS_ERROR_FILE_DIR_NOT_EMPTY
  syn keyword moz_error      NS_ERROR_FILE_DISK_FULL NS_ERROR_FILE_EXECUTION_FAILED
  syn keyword moz_error      NS_ERROR_FILE_INVALID_PATH NS_ERROR_FILE_IS_DIRECTORY NS_ERROR_FILE_IS_LOCKED
  syn keyword moz_error      NS_ERROR_FILE_NAME_TOO_LONG NS_ERROR_FILE_NO_DEVICE_SPACE
  syn keyword moz_error      NS_ERROR_FILE_NOT_DIRECTORY NS_ERROR_FILE_NOT_FOUND NS_ERROR_FILE_READ_ONLY
  syn keyword moz_error      NS_ERROR_FILE_TARGET_DOES_NOT_EXIST NS_ERROR_FILE_TOO_BIG
  syn keyword moz_error      NS_ERROR_FILE_UNKNOWN_TYPE NS_ERROR_FILE_UNRECOGNIZED_PATH
  syn keyword moz_error      NS_ERROR_FILE_UNRESOLVABLE_SYMLINK NS_ERROR_FTP_CWD NS_ERROR_FTP_LIST
  syn keyword moz_error      NS_ERROR_FTP_LOGIN NS_ERROR_FTP_PASV NS_ERROR_FTP_PWD
  syn keyword moz_error      NS_ERROR_GFX_CMAP_MALFORMED NS_ERROR_GFX_COULD_NOT_LOAD_PRINT_MODULE
  syn keyword moz_error      NS_ERROR_GFX_GENERAL_BASE NS_ERROR_GFX_NO_PRINTDIALOG_IN_TOOLKIT
  syn keyword moz_error      NS_ERROR_GFX_NO_PRINTROMPTSERVICE NS_ERROR_GFX_PRINTER_ACCESS_DENIED
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_BASE NS_ERROR_GFX_PRINTER_CMD_FAILURE
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_CMD_NOT_FOUND NS_ERROR_GFX_PRINTER_COLORSPACE_NOT_SUPPORTED
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_COULD_NOT_OPEN_FILE NS_ERROR_GFX_PRINTER_DOC_IS_BUSY
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_DOC_IS_BUSY_PP NS_ERROR_GFX_PRINTER_DOC_WAS_DESTORYED
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_DRIVER_CONFIGURATION_ERROR NS_ERROR_GFX_PRINTER_ENDDOC
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_ENDPAGE NS_ERROR_GFX_PRINTER_FILE_IO_ERROR
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_INVALID_ATTRIBUTE NS_ERROR_GFX_PRINTER_NAME_NOT_FOUND
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_NO_PRINTER_AVAILABLE NS_ERROR_GFX_PRINTER_NO_XUL
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_ORIENTATION_NOT_SUPPORTED NS_ERROR_GFX_PRINTER_OUT_OF_PAPER
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_PAPER_SIZE_NOT_SUPPORTED
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_PLEX_NOT_SUPPORTED NS_ERROR_GFX_PRINTER_PRINTER_IO_ERROR
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_PRINTER_NOT_READY NS_ERROR_GFX_PRINTER_PRINTPREVIEW
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_PRINT_WHILE_PREVIEW
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_RESOLUTION_NOT_SUPPORTED NS_ERROR_GFX_PRINTER_STARTDOC
  syn keyword moz_error      NS_ERROR_GFX_PRINTER_STARTPAGE NS_ERROR_GFX_PRINTER_TOO_MANY_COPIES
  syn keyword moz_error      NS_ERROR_GFX_PRINTING_NOT_IMPLEMENTED NS_ERROR_HOST_IS_IP_ADDRESS
  syn keyword moz_error      NS_ERROR_HTMLPARSER_BADATTRIBUTE NS_ERROR_HTMLPARSER_BADCONTEXT
  syn keyword moz_error      NS_ERROR_HTMLPARSER_BADDTD NS_ERROR_HTMLPARSER_BADFILENAME
  syn keyword moz_error      NS_ERROR_HTMLPARSER_BADTOKENIZER NS_ERROR_HTMLPARSER_BADURL
  syn keyword moz_error      NS_ERROR_HTMLPARSER_BLOCK NS_ERROR_HTMLPARSER_CANTPROPAGATE
  syn keyword moz_error      NS_ERROR_HTMLPARSER_CONTEXTMISMATCH NS_ERROR_HTMLPARSER_CONTINUE
  syn keyword moz_error      NS_ERROR_HTMLPARSER_EOF NS_ERROR_HTMLPARSER_FAKE_ENDTAG
  syn keyword moz_error      NS_ERROR_HTMLPARSER_HIERARCHYTOODEEP NS_ERROR_HTMLPARSER_INTERRUPTED
  syn keyword moz_error      NS_ERROR_HTMLPARSER_INVALID_COMMENT NS_ERROR_HTMLPARSER_INVALIDPARSERCONTEXT
  syn keyword moz_error      NS_ERROR_HTMLPARSER_MISPLACEDTABLECONTENT NS_ERROR_HTMLPARSER_STOPPARSING
  syn keyword moz_error      NS_ERROR_HTMLPARSER_UNKNOWN NS_ERROR_HTMLPARSER_UNRESOLVEDDTD
  syn keyword moz_error      NS_ERROR_HTMLPARSER_UNTERMINATEDSTRINGLITERAL NS_ERROR_ILLEGAL_DURING_SHUTDOWN
  syn keyword moz_error      NS_ERROR_ILLEGAL_INPUT NS_ERROR_ILLEGAL_VALUE NS_ERROR_IMAGE_BLOCKED
  syn keyword moz_error      NS_ERROR_IMAGE_SRC_CHANGED NS_ERROR_IN_PROGRESS
  syn keyword moz_error      NS_ERROR_INSUFFICIENT_DOMAIN_LEVELS NS_ERROR_INVALID_ARG
  syn keyword moz_error      NS_ERROR_INVALID_CONTENT_ENCODING NS_ERROR_INVALID_POINTER NS_ERROR_IS_DIR
  syn keyword moz_error      NS_ERROR_LOSS_OF_SIGNIFICANT_DATA NS_ERROR_MALFORMED_URI NS_ERROR_MALWARE_URI
  syn keyword moz_error      NS_ERROR_MODULE_BASE NS_ERROR_MODULE_BASE_OFFSET NS_ERROR_MODULE_CALENDAR
  syn keyword moz_error      NS_ERROR_MODULE_CONTENT NS_ERROR_MODULE_DOM NS_ERROR_MODULE_DOM_EVENTS
  syn keyword moz_error      NS_ERROR_MODULE_DOM_FILE NS_ERROR_MODULE_DOM_INDEXEDDB NS_ERROR_MODULE_DOM_RANGE
  syn keyword moz_error      NS_ERROR_MODULE_DOM_XPATH NS_ERROR_MODULE_EDITOR NS_ERROR_MODULE_FILES
  syn keyword moz_error      NS_ERROR_MODULE_GENERAL NS_ERROR_MODULE_GFX NS_ERROR_MODULE_HTMLPARSER
  syn keyword moz_error      NS_ERROR_MODULE_IMGLIB NS_ERROR_MODULE_IPC NS_ERROR_MODULE_LAYOUT
  syn keyword moz_error      NS_ERROR_MODULE_LDAP NS_ERROR_MODULE_MAILNEWS NS_ERROR_MODULE_NETWORK
  syn keyword moz_error      NS_ERROR_MODULE_PLUGINS NS_ERROR_MODULE_PROFILE NS_ERROR_MODULE_PYXPCOM
  syn keyword moz_error      NS_ERROR_MODULE_RDF NS_ERROR_MODULE_REG NS_ERROR_MODULE_SCHEMA
  syn keyword moz_error      NS_ERROR_MODULE_SECURITY NS_ERROR_MODULE_STORAGE NS_ERROR_MODULE_SVG
  syn keyword moz_error      NS_ERROR_MODULE_UCONV NS_ERROR_MODULE_URILOADER NS_ERROR_MODULE_WIDGET
  syn keyword moz_error      NS_ERROR_MODULE_XPCOM NS_ERROR_MODULE_XPCONNECT NS_ERROR_MODULE_XSLT
  syn keyword moz_error      NS_ERROR_NET_INTERRUPT NS_ERROR_NET_RESET NS_ERROR_NET_TIMEOUT
  syn keyword moz_error      NS_ERROR_NO_AGGREGATION NS_ERROR_NO_CONTENT NS_ERROR_NO_INTERFACE
  syn keyword moz_error      NS_ERROR_NOT_AVAILABLE NS_ERROR_NOT_CONNECTED NS_ERROR_NOT_IMPLEMENTED
  syn keyword moz_error      NS_ERROR_NOT_INITIALIZED NS_ERROR_NOT_RESUMABLE NS_ERROR_NOT_SAME_THREAD
  syn keyword moz_error      NS_ERROR_NULL_POINTER NS_ERROR_OBJECT_IS_IMMUTABLE NS_ERROR_OFFLINE
  syn keyword moz_error      NS_ERROR_OUT_OF_MEMORY NS_ERROR_PARSED_DATA_CACHED NS_ERROR_PHISHING_URI
  syn keyword moz_error      NS_ERROR_PLUGIN_BLOCKLISTED NS_ERROR_PLUGIN_DISABLED
  syn keyword moz_error      NS_ERROR_PLUGINS_PLUGINSNOTCHANGED NS_ERROR_PLUGIN_TIME_RANGE_NOT_SUPPORTED
  syn keyword moz_error      NS_ERROR_PORT_ACCESS_NOT_ALLOWED NS_ERROR_PROXY_CONNECTION_REFUSED
  syn keyword moz_error      NS_ERROR_PROXY_INVALID_IN_PARAMETER NS_ERROR_PROXY_INVALID_OUT_PARAMETER
  syn keyword moz_error      NS_ERROR_REDIRECT_LOOP NS_ERROR_REMOTE_XUL NS_ERROR_SAVE_LINK_AS_TIMEOUT
  syn keyword moz_error      NS_ERRORSERVICE_CID NS_ERRORSERVICE_CONTRACTID NS_ERROR_SERVICE_IN_USE
  syn keyword moz_error      NS_ERRORSERVICE_NAME NS_ERROR_SERVICE_NOT_AVAILABLE NS_ERROR_SERVICE_NOT_FOUND
  syn keyword moz_error      NS_ERROR_SEVERITY_ERROR NS_ERROR_SEVERITY_SUCCESS NS_ERROR_SOCKET_CREATE_FAILED
  syn keyword moz_error      NS_ERROR_STORAGE_BUSY NS_ERROR_STORAGE_CONSTRAINT NS_ERROR_STORAGE_IOERR
  syn keyword moz_error      NS_ERROR_UCONV_NOCONV NS_ERROR_UDEC_ILLEGALINPUT NS_ERROR_UENC_NOMAPPING
  syn keyword moz_error      NS_ERROR_UNEXPECTED NS_ERROR_UNKNOWN_HOST NS_ERROR_UNKNOWN_PROTOCOL
  syn keyword moz_error      NS_ERROR_UNKNOWN_PROXY_HOST NS_ERROR_UNKNOWN_SOCKET_TYPE
  syn keyword moz_error      NS_ERROR_UNSAFE_CONTENT_TYPE NS_ERROR_WONT_HANDLE_CONTENT NS_ERROR_XBL_BLOCKED
  syn keyword moz_error      NS_ERROR_XPATH_BAD_ARGUMENT_COUNT NS_ERROR_XPATH_BAD_BANG
  syn keyword moz_error      NS_ERROR_XPATH_BAD_COLON NS_ERROR_XPATH_BAD_EXTENSION_FUNCTION
  syn keyword moz_error      NS_ERROR_XPATH_BINARY_EXPECTED NS_ERROR_XPATH_BRACKET_EXPECTED
  syn keyword moz_error      NS_ERROR_XPATH_ILLEGAL_CHAR NS_ERROR_XPATH_INVALID_ARG
  syn keyword moz_error      NS_ERROR_XPATH_INVALID_AXIS NS_ERROR_XPATH_INVALID_EXPRESSION_EVALUATED
  syn keyword moz_error      NS_ERROR_XPATH_INVALID_VAR_NAME NS_ERROR_XPATH_NO_NODE_TYPE_TEST
  syn keyword moz_error      NS_ERROR_XPATH_OPERATOR_EXPECTED NS_ERROR_XPATH_PAREN_EXPECTED
  syn keyword moz_error      NS_ERROR_XPATH_PARSE_FAILURE NS_ERROR_XPATH_UNBALANCED_CURLY_BRACE
  syn keyword moz_error      NS_ERROR_XPATH_UNCLOSED_LITERAL NS_ERROR_XPATH_UNEXPECTED_END
  syn keyword moz_error      NS_ERROR_XPATH_UNKNOWN_FUNCTION NS_ERROR_XPC_BAD_CID NS_ERROR_XPC_BAD_CONVERT_JS
  syn keyword moz_error      NS_ERROR_XPC_BAD_CONVERT_JS_NULL_REF NS_ERROR_XPC_BAD_CONVERT_JS_ZERO_ISNOT_NULL
  syn keyword moz_error      NS_ERROR_XPC_BAD_CONVERT_NATIVE NS_ERROR_XPC_BAD_ID_STRING NS_ERROR_XPC_BAD_IID
  syn keyword moz_error      NS_ERROR_XPC_BAD_INITIALIZER_NAME NS_ERROR_XPC_BAD_OP_ON_WN_PROTO
  syn keyword moz_error      NS_ERROR_XPC_CALL_TO_SCRIPTABLE_FAILED
  syn keyword moz_error      NS_ERROR_XPC_CANT_ADD_PROP_TO_WRAPPED_NATIVE
  syn keyword moz_error      NS_ERROR_XPC_CANT_CALL_WO_SCRIPTABLE NS_ERROR_XPC_CANT_CONVERT_OBJECT_TO_ARRAY
  syn keyword moz_error      NS_ERROR_XPC_CANT_CONVERT_PRIMITIVE_TO_ARRAY NS_ERROR_XPC_CANT_CONVERT_WN_TO_FUN
  syn keyword moz_error      NS_ERROR_XPC_CANT_CREATE_WN NS_ERROR_XPC_CANT_CTOR_WO_SCRIPTABLE
  syn keyword moz_error      NS_ERROR_XPC_CANT_DEFINE_PROP_ON_WN NS_ERROR_XPC_CANT_EXPORT_WN_STATIC
  syn keyword moz_error      NS_ERROR_XPC_CANT_GET_ARRAY_INFO NS_ERROR_XPC_CANT_GET_INTERFACE_INFO
  syn keyword moz_error      NS_ERROR_XPC_CANT_GET_JSOBJECT_OF_DOM_OBJECT NS_ERROR_XPC_CANT_GET_METHOD_INFO
  syn keyword moz_error      NS_ERROR_XPC_CANT_GET_PARAM_IFACE_INFO NS_ERROR_XPC_CANT_MODIFY_PROP_ON_WN
  syn keyword moz_error      NS_ERROR_XPC_CANT_SET_OUT_VAL NS_ERROR_XPC_CANT_SET_READ_ONLY_ATTRIBUTE
  syn keyword moz_error      NS_ERROR_XPC_CANT_SET_READ_ONLY_CONSTANT NS_ERROR_XPC_CANT_SET_READ_ONLY_METHOD
  syn keyword moz_error      NS_ERROR_XPC_CANT_WATCH_WN_STATIC NS_ERROR_XPC_CI_RETURNED_FAILURE
  syn keyword moz_error      NS_ERROR_XPC_GS_RETURNED_FAILURE NS_ERROR_XPC_HAS_BEEN_SHUTDOWN
  syn keyword moz_error      NS_ERROR_XPC_INTERFACE_NOT_FROM_NSISUPPORTS
  syn keyword moz_error      NS_ERROR_XPC_INTERFACE_NOT_SCRIPTABLE NS_ERROR_XPC_JAVASCRIPT_ERROR
  syn keyword moz_error      NS_ERROR_XPC_JAVASCRIPT_ERROR_WITH_DETAILS
  syn keyword moz_error      NS_ERROR_XPC_JSOBJECT_HAS_NO_FUNCTION_NAMED NS_ERROR_XPC_JS_THREW_EXCEPTION
  syn keyword moz_error      NS_ERROR_XPC_JS_THREW_JS_OBJECT NS_ERROR_XPC_JS_THREW_NATIVE_OBJECT
  syn keyword moz_error      NS_ERROR_XPC_JS_THREW_NULL NS_ERROR_XPC_JS_THREW_NUMBER
  syn keyword moz_error      NS_ERROR_XPC_JS_THREW_STRING NS_ERROR_XPC_NATIVE_RETURNED_FAILURE
  syn keyword moz_error      NS_ERROR_XPC_NEED_OUT_OBJECT NS_ERROR_XPC_NOT_ENOUGH_ARGS
  syn keyword moz_error      NS_ERROR_XPC_NOT_ENOUGH_CHARS_IN_STRING
  syn keyword moz_error      NS_ERROR_XPC_NOT_ENOUGH_ELEMENTS_IN_ARRAY NS_ERROR_XPC_SCRIPTABLE_CALL_FAILED
  syn keyword moz_error      NS_ERROR_XPC_SCRIPTABLE_CTOR_FAILED NS_ERROR_XPC_SECURITY_MANAGER_VETO
  syn keyword moz_error      NS_ERROR_XPC_UNEXPECTED NS_ERROR_XSLT_ABORTED NS_ERROR_XSLT_ALREADY_SET
  syn keyword moz_error      NS_ERROR_XSLT_BAD_NODE_NAME NS_ERROR_XSLT_BAD_RECURSION NS_ERROR_XSLT_BAD_VALUE
  syn keyword moz_error      NS_ERROR_XSLT_EXECUTION_FAILURE NS_ERROR_XSLT_LOAD_BLOCKED_ERROR
  syn keyword moz_error      NS_ERROR_XSLT_LOAD_RECURSION NS_ERROR_XSLT_NETWORK_ERROR
  syn keyword moz_error      NS_ERROR_XSLT_NODESET_EXPECTED NS_ERROR_XSLT_PARSE_FAILURE
  syn keyword moz_error      NS_ERROR_XSLT_VAR_ALREADY_SET NS_ERROR_XSLT_WRONG_MIME_TYPE

" # Mozilla NS_IMPL Macros
" find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_IMPL" '{}' \;  \
"   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' | sed 's/(.*$//'           \
"   | sort -u
  syn keyword moz_util       NS_IMPL_ACTION_ATTR NS_IMPL_ADDREF NS_IMPL_ADDREF_INHERITED
  syn keyword moz_util       NS_IMPL_ADDREF_USING_AGGREGATOR NS_IMPL_AGGREGATED NS_IMPL_AGGREGATED_HELPER
  syn keyword moz_util       NS_IMPL_AGGREGATED_QUERY_CYCLE_COLLECTION NS_IMPL_AGGREGATED_QUERY_HEAD
  syn keyword moz_util       NS_IMPL_BOOL_ATTR NS_IMPL_CI_INTERFACE_GETTER1 NS_IMPL_CI_INTERFACE_GETTER2
  syn keyword moz_util       NS_IMPL_CI_INTERFACE_GETTER3 NS_IMPL_CI_INTERFACE_GETTER4
  syn keyword moz_util       NS_IMPL_CI_INTERFACE_GETTER5 NS_IMPL_CI_INTERFACE_GETTER6
  syn keyword moz_util       NS_IMPL_CI_INTERFACE_GETTER7 NS_IMPL_CI_INTERFACE_GETTER8
  syn keyword moz_util       NS_IMPL_CI_INTERFACE_GETTER9 NS_IMPL_CI_INTERFACE_GETTER10
  syn keyword moz_util       NS_IMPL_CI_INTERFACE_GETTER11 NS_IMPL_CLASS_GETSET NS_IMPL_CLASS_GETSET_STR
  syn keyword moz_util       NS_IMPL_CLASS_GETTER NS_IMPL_CLASS_GETTER_STR NS_IMPL_CLASSINFO
  syn keyword moz_util       NS_IMPL_CLASS_SETTER NS_IMPL_CLASS_SETTER_STR NS_IMPL_CYCLE_COLLECTING_ADDREF
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTING_AGGREGATED NS_IMPL_CYCLE_COLLECTING_RELEASE
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTING_RELEASE_WITH_DESTROY NS_IMPL_CYCLE_COLLECTION_0
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_1 NS_IMPL_CYCLE_COLLECTION_2 NS_IMPL_CYCLE_COLLECTION_3
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_4 NS_IMPL_CYCLE_COLLECTION_5 NS_IMPL_CYCLE_COLLECTION_6
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_7 NS_IMPL_CYCLE_COLLECTION_8
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_CLASS NS_IMPL_CYCLE_COLLECTION_DESCRIBE
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_ROOT_NATIVE NS_IMPL_CYCLE_COLLECTION_TRACE_BEGIN
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRACE_BEGIN_INHERITED
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRACE_CALLBACK
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRACE_JS_CALLBACK
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRACE_JS_MEMBER_CALLBACK
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRACE_MEMBER_CALLBACK
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRACE_NATIVE_BEGIN
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_BEGIN
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_BEGIN_AGGREGATED
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_BEGIN_INHERITED
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_BEGIN_INTERNAL
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NATIVE_BEGIN
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NATIVE_MEMBER
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NATIVE_PTR
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSCOMARRAY
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSCOMPTR
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSCOMPTR_AMBIGUOUS
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSTARRAY
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSTARRAY_MEMBER
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_NSTARRAY_OF_NSCOMPTR
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_RAWPTR NS_IMPL_CYCLE_COLLECTION_UNLINK_0
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_UNLINK_BEGIN
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_UNLINK_BEGIN_INHERITED
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_UNLINK_BEGIN_NATIVE
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_UNLINK_NATIVE_0
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_UNLINK_NSCOMARRAY
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_UNLINK_NSCOMPTR
  syn keyword moz_util       NS_IMPL_CYCLE_COLLECTION_UNLINK_NSTARRAY NS_IMPL_CYCLE_COLLECTION_UNROOT_NATIVE
  syn keyword moz_util       NS_IMPL_DOMTARGET_DEFAULTS NS_IMPL_DOUBLE_ATTR NS_IMPL_DOUBLE_ATTR_DEFAULT_VALUE
  syn keyword moz_util       NS_IMPL_ELEMENT_CLONE NS_IMPL_ELEMENT_CLONE_WITH_INIT
  syn keyword moz_util       NS_IMPL_ENUM_ATTR_DEFAULT_VALUE NS_IMPL_FRAMEARENA_HELPERS NS_IMPL_GETSET
  syn keyword moz_util       NS_IMPL_GETSET_STR NS_IMPL_GETTER NS_IMPL_GETTER_STR NS_IMPL_INT_ATTR
  syn keyword moz_util       NS_IMPL_INT_ATTR_DEFAULT_VALUE NS_IMPL_ISUPPORTS0 NS_IMPL_ISUPPORTS1
  syn keyword moz_util       NS_IMPL_ISUPPORTS1_CI NS_IMPL_ISUPPORTS2 NS_IMPL_ISUPPORTS2_CI
  syn keyword moz_util       NS_IMPL_ISUPPORTS3 NS_IMPL_ISUPPORTS3_CI NS_IMPL_ISUPPORTS4
  syn keyword moz_util       NS_IMPL_ISUPPORTS4_CI NS_IMPL_ISUPPORTS5 NS_IMPL_ISUPPORTS5_CI
  syn keyword moz_util       NS_IMPL_ISUPPORTS6 NS_IMPL_ISUPPORTS6_CI NS_IMPL_ISUPPORTS7
  syn keyword moz_util       NS_IMPL_ISUPPORTS7_CI NS_IMPL_ISUPPORTS8 NS_IMPL_ISUPPORTS8_CI
  syn keyword moz_util       NS_IMPL_ISUPPORTS9 NS_IMPL_ISUPPORTS9_CI NS_IMPL_ISUPPORTS10
  syn keyword moz_util       NS_IMPL_ISUPPORTS10_CI NS_IMPL_ISUPPORTS11 NS_IMPL_ISUPPORTS11_CI
  syn keyword moz_util       NS_IMPL_ISUPPORTS_INHERITED0 NS_IMPL_ISUPPORTS_INHERITED1
  syn keyword moz_util       NS_IMPL_ISUPPORTS_INHERITED2 NS_IMPL_ISUPPORTS_INHERITED3
  syn keyword moz_util       NS_IMPL_ISUPPORTS_INHERITED4 NS_IMPL_ISUPPORTS_INHERITED5
  syn keyword moz_util       NS_IMPL_ISUPPORTS_INHERITED6 NS_IMPL_ISUPPORTS_INHERITED7
  syn keyword moz_util       NS_IMPL_ISUPPORTS_INHERITED8 NS_IMPL_ISUPPORTS_INHERITED9
  syn keyword moz_util       NS_IMPL_MOZILLA192_NSGETMODULE NS_IMPL_NONLOGGING_ADDREF_INHERITED
  syn keyword moz_util       NS_IMPL_NONLOGGING_RELEASE_INHERITED NS_IMPL_NON_NEGATIVE_INT_ATTR
  syn keyword moz_util       NS_IMPL_NON_NEGATIVE_INT_ATTR_DEFAULT_VALUE NS_IMPL_NSICONSTRAINTVALIDATION
  syn keyword moz_util       NS_IMPL_NSICONSTRAINTVALIDATION_EXCEPT_SETCUSTOMVALIDITY
  syn keyword moz_util       NS_IMPL_NSIDOCUMENTOBSERVER_CONTENT NS_IMPL_NSIDOCUMENTOBSERVER_CORE_STUB
  syn keyword moz_util       NS_IMPL_NSIDOCUMENTOBSERVER_LOAD_STUB NS_IMPL_NSIDOCUMENTOBSERVER_STATE_STUB
  syn keyword moz_util       NS_IMPL_NSIDOCUMENTOBSERVER_STYLE_STUB NS_IMPL_NSIMUTATIONOBSERVER2_CONTENT
  syn keyword moz_util       NS_IMPL_NSIMUTATIONOBSERVER_CONTENT NS_IMPL_NSIMUTATIONOBSERVER_CORE_STUB
  syn keyword moz_util       NS_IMPL_NS_NEW_HTML_ELEMENT NS_IMPL_NS_NEW_HTML_ELEMENT_CHECK_PARSER
  syn keyword moz_util       NS_IMPL_NS_NEW_SVG_ELEMENT NS_IMPL_NS_NEW_SVG_ELEMENT_CHECK_PARSER
  syn keyword moz_util       NS_IMPL_POSITIVE_INT_ATTR NS_IMPL_POSITIVE_INT_ATTR_DEFAULT_VALUE
  syn keyword moz_util       NS_IMPL_QUERY_BODY NS_IMPL_QUERY_BODY_AGGREGATED NS_IMPL_QUERY_BODY_AMBIGUOUS
  syn keyword moz_util       NS_IMPL_QUERY_BODY_CONDITIONAL NS_IMPL_QUERY_CLASSINFO
  syn keyword moz_util       NS_IMPL_QUERY_CYCLE_COLLECTION NS_IMPL_QUERY_CYCLE_COLLECTION_ISUPPORTS
  syn keyword moz_util       NS_IMPL_QUERY_HEAD NS_IMPL_QUERY_INTERFACE0 NS_IMPL_QUERY_INTERFACE1
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE1_CI NS_IMPL_QUERY_INTERFACE2 NS_IMPL_QUERY_INTERFACE2_CI
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE3 NS_IMPL_QUERY_INTERFACE3_CI NS_IMPL_QUERY_INTERFACE4
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE4_CI NS_IMPL_QUERY_INTERFACE5 NS_IMPL_QUERY_INTERFACE5_CI
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE6 NS_IMPL_QUERY_INTERFACE6_CI NS_IMPL_QUERY_INTERFACE7
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE7_CI NS_IMPL_QUERY_INTERFACE8 NS_IMPL_QUERY_INTERFACE8_CI
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE9 NS_IMPL_QUERY_INTERFACE9_CI NS_IMPL_QUERY_INTERFACE10
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE10_CI NS_IMPL_QUERY_INTERFACE11
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE11_CI NS_IMPL_QUERY_INTERFACE_INHERITED0
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE_INHERITED1 NS_IMPL_QUERY_INTERFACE_INHERITED2
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE_INHERITED3 NS_IMPL_QUERY_INTERFACE_INHERITED4
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE_INHERITED5 NS_IMPL_QUERY_INTERFACE_INHERITED6
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE_INHERITED7 NS_IMPL_QUERY_INTERFACE_INHERITED8
  syn keyword moz_util       NS_IMPL_QUERY_INTERFACE_INHERITED9 NS_IMPL_QUERY_TAIL
  syn keyword moz_util       NS_IMPL_QUERY_TAIL_INHERITING NS_IMPL_QUERY_TAIL_USING_AGGREGATOR
  syn keyword moz_util       NS_IMPL_RELEASE NS_IMPL_RELEASE_INHERITED NS_IMPL_RELEASE_USING_AGGREGATOR
  syn keyword moz_util       NS_IMPL_RELEASE_WITH_DESTROY NS_IMPL_SETTER NS_IMPL_SETTER_STR
  syn keyword moz_util       NS_IMPL_STRING_ATTR NS_IMPL_THREADSAFE_ADDREF NS_IMPL_THREADSAFE_CI
  syn keyword moz_util       NS_IMPL_THREADSAFE_DOM_CI NS_IMPL_THREADSAFE_DOM_CI_ALL_THE_REST
  syn keyword moz_util       NS_IMPL_THREADSAFE_DOM_CI_GETINTERFACES NS_IMPL_THREADSAFE_DOM_CI_HELPER
  syn keyword moz_util       NS_IMPL_THREADSAFE_ISUPPORTS0 NS_IMPL_THREADSAFE_ISUPPORTS1
  syn keyword moz_util       NS_IMPL_THREADSAFE_ISUPPORTS2 NS_IMPL_THREADSAFE_ISUPPORTS3
  syn keyword moz_util       NS_IMPL_THREADSAFE_ISUPPORTS4 NS_IMPL_THREADSAFE_ISUPPORTS5
  syn keyword moz_util       NS_IMPL_THREADSAFE_ISUPPORTS6 NS_IMPL_THREADSAFE_ISUPPORTS7
  syn keyword moz_util       NS_IMPL_THREADSAFE_ISUPPORTS8 NS_IMPL_THREADSAFE_ISUPPORTS9
  syn keyword moz_util       NS_IMPL_THREADSAFE_ISUPPORTS10 NS_IMPL_THREADSAFE_ISUPPORTS11
  syn keyword moz_util       NS_IMPL_THREADSAFE_RELEASE NS_IMPL_UINT_ATTR NS_IMPL_UINT_ATTR_DEFAULT_VALUE
  syn keyword moz_util       NS_IMPL_UINT_ATTR_NON_ZERO NS_IMPL_UINT_ATTR_NON_ZERO_DEFAULT_VALUE
  syn keyword moz_util       NS_IMPL_URI_ATTR NS_IMPL_URI_ATTR_WITH_BASE NS_IMPL_ZEROING_OPERATOR_NEW

" # Mozilla NS_IMPL Constants
" find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_IMPL" '{}' \;  \
"   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' -v                         \
"   | sort -u
  syn keyword moz_impl       NS_IMPLEMENT_FULLVISITRESULT NS_IMPLEMENT_SIMPLE_RESULTNODE
  syn keyword moz_impl       NS_IMPLEMENT_SIMPLE_RESULTNODE_NO_GETITEMMID NS_IMPLEMENT_VISITRESULT
  syn keyword moz_impl       NS_IMPL_CYCLE_COLLECTION_TRACE_END
  syn keyword moz_impl       NS_IMPL_CYCLE_COLLECTION_TRACE_PRESERVED_WRAPPER
  syn keyword moz_impl       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_END
  syn keyword moz_impl       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_LISTENERMANAGER
  syn keyword moz_impl       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_SCRIPT_OBJECTS
  syn keyword moz_impl       NS_IMPL_CYCLE_COLLECTION_TRAVERSE_USERDATA NS_IMPL_CYCLE_COLLECTION_UNLINK_END
  syn keyword moz_impl       NS_IMPL_CYCLE_COLLECTION_UNLINK_LISTENERMANAGER
  syn keyword moz_impl       NS_IMPL_CYCLE_COLLECTION_UNLINK_PRESERVED_WRAPPER
  syn keyword moz_impl       NS_IMPL_CYCLE_COLLECTION_UNLINK_USERDATA NS_IMPL_QUERY_TAIL_GUTS
  syn keyword moz_impl       NS_IMPL_THREADSAFE_QUERY_INTERFACE0 NS_IMPL_THREADSAFE_QUERY_INTERFACE1
  syn keyword moz_impl       NS_IMPL_THREADSAFE_QUERY_INTERFACE10 NS_IMPL_THREADSAFE_QUERY_INTERFACE11
  syn keyword moz_impl       NS_IMPL_THREADSAFE_QUERY_INTERFACE2 NS_IMPL_THREADSAFE_QUERY_INTERFACE3
  syn keyword moz_impl       NS_IMPL_THREADSAFE_QUERY_INTERFACE4 NS_IMPL_THREADSAFE_QUERY_INTERFACE5
  syn keyword moz_impl       NS_IMPL_THREADSAFE_QUERY_INTERFACE6 NS_IMPL_THREADSAFE_QUERY_INTERFACE7
  syn keyword moz_impl       NS_IMPL_THREADSAFE_QUERY_INTERFACE8 NS_IMPL_THREADSAFE_QUERY_INTERFACE9

" # Mozilla NS_INTERFACE Macros
" find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_INTERFACE" '{}' \;  \
"   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' | sed 's/(.*$//'                \
"   | sort -u
  syn keyword moz_util       NS_INTERFACE_MAP_BEGIN NS_INTERFACE_MAP_BEGIN_AGGREGATED
  syn keyword moz_util       NS_INTERFACE_MAP_BEGIN_CYCLE_COLLECTION
  syn keyword moz_util       NS_INTERFACE_MAP_BEGIN_CYCLE_COLLECTION_INHERITED
  syn keyword moz_util       NS_INTERFACE_MAP_END_AGGREGATED NS_INTERFACE_MAP_END_INHERITING
  syn keyword moz_util       NS_INTERFACE_MAP_ENTRIES_CYCLE_COLLECTION
  syn keyword moz_util       NS_INTERFACE_MAP_ENTRIES_CYCLE_COLLECTION_AGGREGATED NS_INTERFACE_MAP_ENTRY
  syn keyword moz_util       NS_INTERFACE_MAP_ENTRY_AGGREGATED NS_INTERFACE_MAP_ENTRY_AMBIGUOUS
  syn keyword moz_util       NS_INTERFACE_MAP_ENTRY_CONDITIONAL NS_INTERFACE_MAP_ENTRY_CYCLE_COLLECTION
  syn keyword moz_util       NS_INTERFACE_MAP_ENTRY_CYCLE_COLLECTION_AGGREGATED
  syn keyword moz_util       NS_INTERFACE_MAP_ENTRY_CYCLE_COLLECTION_ISUPPORTS
  syn keyword moz_util       NS_INTERFACE_MAP_ENTRY_EXTERNAL_DOM_CLASSINFO NS_INTERFACE_MAP_ENTRY_IF_TAG
  syn keyword moz_util       NS_INTERFACE_MAP_ENTRY_TEAROFF NS_INTERFACE_MAP_STATIC_AMBIGUOUS
  syn keyword moz_util       NS_INTERFACE_TABLE0 NS_INTERFACE_TABLE1 NS_INTERFACE_TABLE2 NS_INTERFACE_TABLE3
  syn keyword moz_util       NS_INTERFACE_TABLE4 NS_INTERFACE_TABLE5 NS_INTERFACE_TABLE6 NS_INTERFACE_TABLE7
  syn keyword moz_util       NS_INTERFACE_TABLE8 NS_INTERFACE_TABLE9 NS_INTERFACE_TABLE10
  syn keyword moz_util       NS_INTERFACE_TABLE11 NS_INTERFACE_TABLE_END_WITH_PTR NS_INTERFACE_TABLE_ENTRY
  syn keyword moz_util       NS_INTERFACE_TABLE_ENTRY_AMBIGUOUS NS_INTERFACE_TABLE_HEAD
  syn keyword moz_util       NS_INTERFACE_TABLE_HEAD_CYCLE_COLLECTION_INHERITED NS_INTERFACE_TABLE_INHERITED0
  syn keyword moz_util       NS_INTERFACE_TABLE_INHERITED1 NS_INTERFACE_TABLE_INHERITED2
  syn keyword moz_util       NS_INTERFACE_TABLE_INHERITED3 NS_INTERFACE_TABLE_INHERITED4
  syn keyword moz_util       NS_INTERFACE_TABLE_INHERITED5 NS_INTERFACE_TABLE_INHERITED6
  syn keyword moz_util       NS_INTERFACE_TABLE_INHERITED7 NS_INTERFACE_TABLE_INHERITED8
  syn keyword moz_util       NS_INTERFACE_TABLE_INHERITED9 NS_INTERFACE_TABLE_INHERITED10
  syn keyword moz_util       NS_INTERFACE_TABLE_INHERITED11 NS_INTERFACE_TABLE_INHERITED12
  syn keyword moz_util       NS_INTERFACE_TABLE_TAIL_INHERITING NS_INTERFACE_TABLE_TAIL_USING_AGGREGATOR
  syn keyword moz_util       NS_INTERFACE_TABLE_TO_MAP_SEGUE_CYCLE_COLLECTION

" # Mozilla NS_INTERFACE Constants
" find src/mozilla -regex ".*\.\(idl\|h\)" -exec grep "^#define\s*NS_INTERFACE" '{}' \;  \
"   | sed 's/^#define\s*//' | sed 's/\s.*$//' | grep '(' -v                              \
"   | sort -u
  syn keyword moz_interface  NS_INTERFACEINFOMANAGER_SERVICE_CID NS_INTERFACEINFOMANAGER_SERVICE_CLASSNAME
  syn keyword moz_interface  NS_INTERFACEINFOMANAGER_SERVICE_CONTRACTID NS_INTERFACE_MAP_END
  syn keyword moz_interface  NS_INTERFACE_MAP_END_THREADSAFE NS_INTERFACE_TABLE_BEGIN NS_INTERFACE_TABLE_END
  syn keyword moz_interface  NS_INTERFACE_TABLE_TAIL NS_INTERFACE_TABLE_TO_MAP_SEGUE

" Mozilla highlight rules
hi def link moz_type         Type
hi def link moz_type_ns      Type
hi def link moz_component    Type
hi def link moz_dom          Type
hi def link moz_assert       Function
hi def link moz_util         Function
hi def link moz_boolean      Constant
hi def link moz_constant     Constant
hi def link moz_error        Constant
hi def link moz_impl         Constant
hi def link moz_interface    Constant

